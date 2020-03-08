class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  belongs_to :status
  has_one :review
end
