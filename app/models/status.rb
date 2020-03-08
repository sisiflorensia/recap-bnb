class Status < ApplicationRecord
    has_many :bookings

    validates :state, presence: true, uniqueness: true
end
