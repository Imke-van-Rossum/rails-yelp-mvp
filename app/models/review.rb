class Review < ApplicationRecord
  belongs_to :restaurant

  validates_associated :restaurant

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, :inclusion => 1..5
end
