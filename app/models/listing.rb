class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :brand, presence: true
  validates :production_year, presence: true
  validates :user, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :horsepower, presence: true
  validates :engine, presence: true
end
