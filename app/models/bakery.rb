class Bakery < ApplicationRecord
    has_many :menu_items

    def self.most_popular
        bakeries = []
        Order.all.each do |order|
            menu_item = MenuItem.find(order.menu_item_id)
            bakeries << Bakery.find(menu_item.bakery_id)
        end
        return bakeries.max_by { |i| bakeries.count(i) }.name
    end

end
