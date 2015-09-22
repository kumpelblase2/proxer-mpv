require "./proxer-mpv/*"

module Proxer::Mpv
  def self.run(url, command = "mpv", &block : Array(StreamRecord) -> StreamRecord)
    puts "Finding available streams"
    extractor = StreamExtractor.new(url)
    streams = extractor.available_streams
    stream = block.call(streams)
    puts "Selected #{stream.name}"
    video_url = VideoExtractor.extract(stream)
    if url = video_url
      PlayerHandler.run(command, url)
    end
  end
end

if ARGV.size > 0
  Proxer::Mpv.run(ARGV[0]) do |streams|
    result = streams.find do |stream|
      stream.name == "Proxer-Stream"
    end

    if actual = result
      return actual
    else
      return streams[0]
    end
  end
else
  puts "Missing url"
end
