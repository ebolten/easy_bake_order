class MenuItem < ApplicationRecord
    has_many :ingredients
    has_many :orders
    belongs_to :bakery
end
