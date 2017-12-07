json.extract! @recording, :id, :user_id, :duration, :topic, :content, :created_at, :updated_at
json.tags @recording.tags do |tag|
  json.extract! tag, :id, :name
end
json.user_avatar @recording.user.avatar
