class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true, in: (1..5) }, inclusion: [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
end
