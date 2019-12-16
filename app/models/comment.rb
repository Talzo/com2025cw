class Comment < ApplicationRecord
# Each comment belongs to one specific post
  belongs_to :post
# Submission can't be empty
  validates :body, presence: true
end
