class Flat < ApplicationRecord
  belongs_to :country
  belongs_to :user
  belongs_to :category

  has_many :bookings
  has_many :reviews, through: :bookings
end
