class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :description, length: { minimum: 20 }
end
