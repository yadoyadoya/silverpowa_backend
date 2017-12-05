json.array! @recordings do |recording|
  json.extract! recording, :content, :duration
end

# LONGER VERSION
# json.recordings do
#   json.array! @recordings do |recording|
#     json.name recording.name       # key value
#     json.content recording.content
#     json.duration recording.duration
#   end
# end
