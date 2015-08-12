class Api::ImageProductsController < ApplicationController
  def index
    @images = ImageProduct.all
    render json: @images
  end

  def create
    @image = ImageProduct.new(image_params)
    if @image.save
      render status: 201, json: @image
    else
      render status: 404
    end
  end

  def show
    @image = ImageProduct.find(params[:id])
    render json: @image
  end

  def update
    @image = ImageProduct.find(params[:id]).update(image_params)
    render json: @image
  end

  def destroy
    @image = ImageProduct.destroy(params[:id])
    render json: @image
  end

  private

  def image_params
    params.require(:image_product).permit(:image_id, :product_id)
  end
end
