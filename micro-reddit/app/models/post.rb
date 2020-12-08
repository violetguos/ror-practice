class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: {maximum: 120}

  belongs_to :user, class_name: :User, foreign_key: :user_id
  has_many :comments, dependent: :destroy
end