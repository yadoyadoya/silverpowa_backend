json.array! @votes do |vote|
  json.extract! vote, :id, :counter
end

