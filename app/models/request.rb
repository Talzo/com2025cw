class Request < ApplicationRecord
# Submission can't be empty and the maximum legth is 800 characters
  validates :body, presence: true, length: {maximum: 800}
end
