class Place < ApplicationRecord
    paginates_per 3
    belongs_to :user
    validates :name , presence: true
end
