class SlidersController < ApplicationController
  def index
    @sliders = Slider.all
    render json: @sliders
  end

  def create
    @slider = Slider.new(slider_params)
    if @slider.save
      render status: 201, json: @slider
    else
      render status: 404
    end
  end

  def show
    @slider = Slider.find(params[:id])
    render json: @slider
  end

  def update
    @slider = Slider.find(params[:id]).update(slider_params)
    render json: @slider
  end

  def destroy
    @slider = Slider.destroy(params[:id])
    render json: @slider
  end

  private

  def slider_params
    params.require(:slider).permit(:page_id)
  end
end
