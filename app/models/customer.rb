class Customer < ApplicationRecord
    has_secure_password
    has_many :orders
    validates :name, presence: :true, uniqueness: :true

    def favorite_resaurant
        bakeries = []
        Order.all.each do |order|
            if order.customer_id == self.id
                menu_item = MenuItem.find(order.menu_item_id)
                bakeries << Bakery.find(menu_item.bakery_id)
            end
        end
        if bakeries.length == 0
            return "No Orders."
        else
            return bakeries.max_by { |i| bakeries.count(i) }.name
        end
    end
end
