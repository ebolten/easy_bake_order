class OrdersController < ApplicationController

    def new
        @order = Order.new
    end

    def create

        @order = Order.create(order_params)

        redirect_to bakeries_path
    end

    private

    def order_params
        params.require(:order).permit(:customer_id,:is_delivery?, :menu_item_id, :desc)
    end

end
