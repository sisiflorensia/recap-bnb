class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true, numericality: { only_integer: true, bigger_than: 0, less_than: 6 }
  validates :content, length: { maximum: 200 }
end
