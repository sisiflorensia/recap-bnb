class Country < ApplicationRecord
    has_many :flats

    validates :country_name, presence: true, uniqueness: true
end
