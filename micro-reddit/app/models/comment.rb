class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: {maximum: 250}

  belongs_to :user, class_name: :User
  belongs_to :post
end
