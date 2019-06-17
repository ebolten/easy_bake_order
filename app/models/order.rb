class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_menus
    has_many :menu_items, through: :order_menus
end
