class Customers::CustomersController < ApplicationController
  def new
  end

  def index
  end

  def show
    @customer = Customer.new
    @customers = current_customer
    @posts = Post.where(customer_id:params[:id])
  end

  def edit
  end
end
