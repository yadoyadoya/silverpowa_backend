# json.array! @users do |user|
#   json.extract! user, :email, :birthday, :description, :picture, :dialects
# end


json.array! @users do |user|
  json.extract! user, :id, :email, :avatar, :gender, :nickname, :language, :tag_list
end

