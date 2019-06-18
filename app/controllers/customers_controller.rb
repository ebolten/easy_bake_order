class CustomersController < ApplicationController
    
    def index
        @customers = Customer.all
    end
    
    def show
        @customer = Customer.find(params['id'])
    end

    def new
        @customer = Customer.new
      end
      def create
        @customer = Customer.create(customer_params)
        redirect_to login_path
     end
     private
     def customer_params
         params.require(:customer).permit(:name,:tel_num)
     end
end
   
