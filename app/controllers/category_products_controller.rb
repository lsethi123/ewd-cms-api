class CategoryProductsController < ApplicationController

  def index
    @categories = CategoryProduct.all
    render json: @categories
  end

  def create
    @category = CategoryProduct.new(category_params)
    if @category.save
      render status: 201, json: @category
    else
      render status: 404
    end
  end

  def show
    @category = CategoryProduct.find(params[:id])
    render json: @category
  end

  def update
    @category = CategoryProduct.find(params[:id]).update(category_params)
    render json: @category
  end

  def destroy
    @category = CategoryProduct.destroy(params[:id])
    render json: @category
  end

  private

  def category_params
    params.require(:category_product).permit(:category_id, :product_id)
  end

end
