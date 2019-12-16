class Post < ApplicationRecord
# A post can have many comments
  has_many :comments
# Submission can't be empty
  validates :body, presence: true
end
