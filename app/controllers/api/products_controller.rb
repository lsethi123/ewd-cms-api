class Api::ProductsController < ApplicationController

  def index
    if params[:category_ids]
      @products = Product.includes(:category_products).where('category_products.category_id = ?', params[:category_ids]).references(:category_products)
    else
      @products = Product.all
    end
    render json: @products
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render status: 201, json: @product
    else
      render status: 404
    end
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def update
    @product = Product.find(params[:id]).update(product_params)
    render json: @product
  end

  def destroy
    @product = Product.destroy(params[:id])
    render json: @product
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :image, :in_stock)
  end

end
