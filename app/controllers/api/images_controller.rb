class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render json: @images
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      render status: 201, json: @image
    else
      render status: 404
    end
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def update
    @image = Image.find(params[:id]).update(image_params)
    render json: @image
  end

  def destroy
    @image = Image.destroy(params[:id])
    render json: @image
  end

  private

  def image_params
    params.require(:image).permit(:file)
  end
end
