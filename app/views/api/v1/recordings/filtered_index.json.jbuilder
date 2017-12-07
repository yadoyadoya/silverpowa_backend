json.array! @recordings do |recording|
  json.extract! recording, :id, :user_id, :duration, :topic, :content, :created_at, :updated_at
  json.avatar recording.try(:user).try(:avatar)

end
