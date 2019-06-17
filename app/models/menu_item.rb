class MenuItem < ApplicationRecord
    has_many :ingredients
    has_many :orders, through: :order_menus
    belongs_to :bakery
end
