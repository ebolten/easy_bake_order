class OrdersController < ApplicationController

    def new
        @order = Order.new
    end

    def create

        @order = Order.create(order_params)
        #@menu_item = MenuItem.create()

        # byebug

        redirect_to bakeries_path
    end

    private

    def order_params
        params.require(:order).permit(:customer_id,:is_delivery?)
    end

    def menu_params
        params.require(:order).permit(:name,:bakery_id)
    end

end
