class User < ApplicationRecord
  validates :username, presence: true
  validates :username, length: {minimum: 3}
  validates :username, uniqueness: {scope: :username, message: "This username is taken!"}
  has_many :posts
  has_many :comments
end
