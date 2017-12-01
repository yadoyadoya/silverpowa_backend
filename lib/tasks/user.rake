namespace :user do
  desc "TODO"
  task update_all: :environment do
    users = User.all
    users.each do |user|
      puts user.id
    end
  end
  desc "TODO"
  task update: :environment do |t, args|
    user = User.find_by(args[:id])
    puts user.id
    p t
  end
end
