class Post < ApplicationRecord
# A post can have many comments
  has_many :comments
# Posts can't be empty and the maximum legth is 800 characters
  validates :body, presence: true, length: {maximum: 800}
end
