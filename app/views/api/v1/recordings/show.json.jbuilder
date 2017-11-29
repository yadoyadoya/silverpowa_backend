json.extract! @recording, :id, :content, :duration
json.tags @recording.tags do |tag|
  json.extract! tag, :id, :content
end
