class Api::ShippingAddressesController < ApplicationController
  def index
    if params[:order_id]
      @shipping_addresses = ShippingAddress.where(order_id: params[:order_id])
    else
      @shipping_addresses = ShippingAddress.all
    end
    render json: @shipping_addresses
  end

  def create
    @shipping_address = ShippingAddress.new(shipping_address_params)
    if @shipping_address.save
      render status: 201, json: @shipping_address
    else
      render status: 404
    end
  end

  def show
    @shipping_address = ShippingAddress.find(params[:id])
    render json: @shipping_address
  end

  def update
    @shipping_address = ShippingAddress.find(params[:id]).update(shipping_address_params)
    render json: @shipping_address
  end

  def destroy
    @shipping_address = ShippingAddress.destroy(params[:id])
    render json: @shipping_address
  end

  private

  def shipping_address_params
    params.require(:shipping_address).permit(:first_name, :last_name, :address, :address2, :city, :postal_code, :country, :region, :order_id)
  end
end
