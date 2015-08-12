class Api::LineItemsController < ApplicationController
  def index
    if params[:order_id]
      @line_items = LineItem.where(order_id: params[:order_id])
    else
      @line_items = LineItem.all
    end
    render json: @line_items
  end

  def create
    @line_item = LineItem.new(line_item_params)
    if @line_item.save
      render status: 201, json: @line_item
    else
      render status: 404
    end
  end

  def show
    @line_item = LineItem.find(params[:id])
    render json: @line_item
  end

  def update
    @line_item = LineItem.find(params[:id]).update(line_item_params)
    render json: @line_item
  end

  def destroy
    @line_item = LineItem.destroy(params[:id])
    render json: @line_item
  end

  private

  def line_item_params
    params.require(:line_item).permit(:price, :quantity, :order_id, :product_id)
  end
end
