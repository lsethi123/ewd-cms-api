class Api::ImagePostsController < ApplicationController
  def index
    @images = ImagePost.all
    render json: @images
  end

  def create
    @image = ImagePost.new(image_params)
    if @image.save
      render status: 201, json: @image
    else
      render status: 404
    end
  end

  def show
    @image = ImagePost.find(params[:id])
    render json: @image
  end

  def update
    @image = ImagePost.find(params[:id]).update(image_params)
    render json: @image
  end

  def destroy
    @image = ImagePost.destroy(params[:id])
    render json: @image
  end

  private

  def image_params
    params.require(:image_post).permit(:image_id, :post_id)
  end
end
