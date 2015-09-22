require "http/client"

module Proxer::Mpv
  class StreamExtractor
    getter available_streams

    def initialize(url)
      response = HTTP::Client.get url
      @available_streams = [] of StreamRecord
      response.body.lines.each do |line|
        if line =~ /streams ?= ?(\[.*\]);/
          json_content = $1
          @available_streams = Array(StreamRecord).from_json(json_content)
        end
      end
    end
  end
end
