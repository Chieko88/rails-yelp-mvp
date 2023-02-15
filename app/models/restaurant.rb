class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  SPECIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :category, inclusion: { in: SPECIES }
end
