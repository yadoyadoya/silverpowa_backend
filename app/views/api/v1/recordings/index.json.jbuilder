json.array! @recordings do |recording|
  json.extract! recording, :id, :user_id, :duration, :topic, :content, :created_at, :updated_at
  json.avatar recording.try(:user).try(:avatar)
end
# LONGER VERSION
# json.recordings do
#   json.array! @recordings do |recording|
#     json.name recording.name       # key value
#     json.content recording.content
#     json.duration recording.duration
#   end
# end
