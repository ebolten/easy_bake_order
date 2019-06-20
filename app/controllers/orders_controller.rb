class OrdersController < ApplicationController

    def new
        @order = Order.new
    end

    def show
        @order = Order.find(params[:id])

        @time = @order.created_at
        @year = @time.year
        @month = @time.month
        case @month
        when 1
            @month = "January"
        when 2
            @month = "February"
        when 3
            @month = "March"
        when 4
            @month = "April"
        when 5
            @month = "May"
        when 6
            @month = "June"
        when 7
            @month = "July"
        when 8
            @month = "August"
        when 9
            @month = "September"
        when 10
            @month = "October"
        when 11
            @month = "November"
        when 12
            @month = "December"
        end

        @day = @time.day
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
        params.require(:order).permit(:customer_id,:is_delivery, :menu_item_id, :desc, :filling, :layers)
    end

end
