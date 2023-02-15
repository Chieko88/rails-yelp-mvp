class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  validates :content, presence: true
  validates :rating, presence: true
  SPECIES = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: SPECIES }
end
