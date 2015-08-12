class Api::OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render status: 201, json: @order
    else
      render status: 404
    end
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def update
    @order = Order.find(params[:id]).update(order_params)
    render json: @order
  end

  def destroy
    @order = Order.destroy(params[:id])
    render json: @order
  end

  private

  def order_params
    params.require(:order).permit(:number, :total, :state, :user_id)
  end

end
