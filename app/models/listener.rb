class Listener < ApplicationRecord
  belongs_to :recording
  belongs_to :user
end
