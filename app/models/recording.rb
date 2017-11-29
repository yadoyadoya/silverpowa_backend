class Recording < ApplicationRecord
  belongs_to :user
  has_many :listeners
  has_many :votes
  has_many :tags, :through => :recording_tags
  acts_as_taggable
end
