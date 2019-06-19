class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :menu_item
    validates :menu_item, presence: true
    # validates :is_delivery?, inclusion: [true, false]
    validates :desc, presence: true
end
