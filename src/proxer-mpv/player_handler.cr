module Proxer::Mpv
  module PlayerHandler
    def self.run(command, video_url)
      puts "Starting for video url #{video_url}"
      result = Process.run(command, [video_url])
      puts "Player exited with code #{result.exit_code}"
    end
  end
end
