class OrdersController < ApplicationController

    def new
        @order = Order.new
        @order_menu = OrderMenu.new
    end

    def create

        @order = Order.create(order_params)
        @order_menu = OrderMenu.create(order_id:@order.id,menu_id:params['order']['order_menu_ids'])

        redirect_to bakeries_path
    end

    private

    def order_params
        params.require(:order).permit(:customer_id,:is_delivery?)
    end

end
