json.extract! @recording, :id, :content, :topic, :duration
json.tags @recording.tags do |tag|
  json.extract! tag, :id, :name
end
