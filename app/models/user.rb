class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_taggable
  acts_as_taggable_on :topic
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recordings, foreign_key: "user_id"
  has_many :listeners, foreign_key: "user_id"
  has_many :votes
end
