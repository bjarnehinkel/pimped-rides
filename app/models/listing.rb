class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :brand, presence: true
  validates :production_year, presence: true
  validates :user, presence: true
  validates :name, presence: true
end
