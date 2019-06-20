class OrdersController < ApplicationController

    def new
        @order = Order.new
    end

    def show
        @order = Order.find(params[:id])
    end

    def create
        @order = Order.create(order_params)
        if @order.valid?
          redirect_to customer_path(Customer.find(@order.customer_id))
        else
          render :new
        end
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to customer_path(Customer.find(@order.customer_id))
    end

    private

    def order_params
        params.require(:order).permit(:customer_id,:is_delivery, :menu_item_id, :desc)
    end

end
