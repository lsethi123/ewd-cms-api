class Api::WebsitesController < ApplicationController
  def index
    if params[:user_id]
      @websites = Website.where(user_id: params[:user_id])
    else
      @websites = Website.all
    end
    render json: @websites
  end

  def create
    @website = Website.new(website_params)
    if @website.save
      render status: 201, json: @website
    else
      render status: 404
    end
  end

  def show
    @website = Website.find(params[:id])
    render json: @website
  end

  def update
    @website = Website.find(params[:id]).update(website_params)
    render json: @website
  end

  def destroy
    @website = Website.destroy(params[:id])
    render json: @website
  end

  private

  def website_params
    params.require(:website).permit(:title, :address, :user_id)
  end
end
