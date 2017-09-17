class Place < ApplicationRecord
    paginates_per 3
    geocoded_by :address
    after_validation :geocode
    belongs_to :user
    validates :name , presence: true, length: { minimum: 3 }
    validates :address, :description, presence: true
end
