class Request < ApplicationRecord
  validates :body, presence: true, length: {maximum: 800}
end
