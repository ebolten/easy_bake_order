class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :menu_item
    validates :menu_item, presence: true
    validates :is_delivery?, presence: true
    validates :desc, presence: true
end
