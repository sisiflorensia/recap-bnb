class Flat < ApplicationRecord
  belongs_to :country
  belongs_to :user
  belongs_to :category

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many_attached :photos

  validates_presence_of :price_day, message: 'Please put in a rounded price.'
  validates :title, :description, :address, :photos, presence: true
  validates :price_day, presence: true, numericality: { only_integer: true }

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
