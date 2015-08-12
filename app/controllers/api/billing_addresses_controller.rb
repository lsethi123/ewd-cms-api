class Api::BillingAddressesController < ApplicationController
  def index
    if params[:order_id]
      @billing_addresses = BillingAddress.where(order_id: params[:order_id])
    else
      @billing_addresses = BillingAddress.all
    end
    render json: @billing_addresses
  end

  def create
    @billing_address = BillingAddress.new(billing_address_params)
    if @billing_address.save
      render status: 201, json: @billing_address
    else
      render status: 404
    end
  end

  def show
    @billing_address = BillingAddress.find(params[:id])
    render json: @billing_address
  end

  def update
    @billing_address = BillingAddress.find(params[:id]).update(billing_address_params)
    render json: @billing_address
  end

  def destroy
    @billing_address = BillingAddress.destroy(params[:id])
    render json: @billing_address
  end

  private

  def billing_address_params
    params.require(:billing_address).permit(:first_name, :last_name, :address, :address2, :city, :postal_code, :country, :region, :order_id)
  end
end
