require "json"

class StreamRecord
  json_mapping({
      id: String,
      code: String,
      type: String,
      htype: String,
      name: String,
      replace: String,
      img: String,
      parts: String,
      ssl: String,
      text: String,
      legal: String,
      uploader: String,
      username: String,
      tid: String,
      tname: String
  })
end
