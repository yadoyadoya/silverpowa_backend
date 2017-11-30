json.array! @users do |user|
  json.extract! user, :email, :birthday, :description, :picture, :dialects
end
