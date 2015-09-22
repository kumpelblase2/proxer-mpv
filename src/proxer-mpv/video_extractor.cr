require "http/client"

module Proxer::Mpv
  module VideoExtractor
    def self.extract(stream)
      new_url = stream.replace.sub('#', stream.code)
      response = HTTP::Client.get new_url
      url = ""
      response.body.lines.each do |line|
        if line =~ /<source type="video\/mp4" src="(.+)">/
          url = $1
        end
      end

      url
    end
  end
end
