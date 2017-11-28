class Tag < ApplicationRecord
  has_many :recordings, :through => :recording_tags
  validates :name, presence: true

end
