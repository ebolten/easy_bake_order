class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

   def new
     @customer = Customer.new
   end

   def create
     @customer = Customer.create(customer_params)
     if @customer.valid?
      session['user_id'] = @customer.id
      redirect_to customer_path(@customer)
     else
       render :new
    end
  end

    def update
      @customer = Customer.find(params['id'])
      @customer.update(customer_params)
      redirect_to customer_path(@customer)
    end

    def edit
      @customer = Customer.find(params['id'])
    end
  

  private

  def customer_params
      params.require(:customer).permit(:name,:tel_num,:password_digest)
  end

end
