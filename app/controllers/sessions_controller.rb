class SessionsController < ApplicationController

  def new
  end

  def create
    #session.clear
    # get the user from the database

    @customer = Customer.find_by(name: params[:name])
    @password = Customer.find_by(password_digest: params[:password_digest])
    # if they're right
    if @customer && @password
        # set a cookie with that user's ID
        session["user_id"] = @customer.id
        redirect_to customer_path(@customer)
    else
    # if they're wrong
        # re-do the page
        flash.notice = "Wrong username/Password. Please try again."
        render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
