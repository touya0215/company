class Customers::CustomersController < ApplicationController

  before_action :set_customer, only: [:likes]

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to customer_path(@customer[:id])
  end

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
    @customer = Customer.new
    @customers = Customer.find(params[:id])
  end


  private


  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kama, :first_name_kana, :telephone_number, :email)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end


end
