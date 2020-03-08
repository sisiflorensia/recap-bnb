class Category < ApplicationRecord
    has_many :flats

    validates :name, presence: true, uniqueness: true
end
