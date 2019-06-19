class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

   def index
     @customer = Customer.all
   end


   def new
     @customer = Customer.new
   end

   def create
     @customer = Customer.create(customer_params)
     if @customer.valid?
       redirect_to login_path
     else
       render :new
    end
  end



  private

  def customer_params
      params.require(:customer).permit(:name,:tel_num,:password_digest)
  end

end
