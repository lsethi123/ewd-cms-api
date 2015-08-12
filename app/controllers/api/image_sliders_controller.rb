class Api::ImageSlidersController < ApplicationController
  def index
    @images = ImageSlider.all
    render json: @images
  end

  def create
    @image = ImageSlider.new(image_params)
    if @image.save
      render status: 201, json: @image
    else
      render status: 404
    end
  end

  def show
    @image = ImageSlider.find(params[:id])
    render json: @image
  end

  def update
    @image = ImageSlider.find(params[:id]).update(image_params)
    render json: @image
  end

  def destroy
    @image = ImageSlider.destroy(params[:id])
    render json: @image
  end

  private

  def image_params
    params.require(:image_slider).permit(:image_id, :slider_id)
  end
end
