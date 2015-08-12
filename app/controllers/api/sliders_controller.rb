class Api::SlidersController < ApplicationController
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
    params.require(:slider).permit(:accessibility, :adaptive_height, :autoplay, :autoplay_speed, :arrows, :as_nav_for, :append_arrows, :prev_arrow, :next_arrow, :center_mode, :center_padding, :css_ease, :dots, :draggable, :fade, :focus_on_select, :easing, :edge_friction, :infinite, :initial_slide, :lazy_load, :mobile_first, :pause_on_hover,
    :pause_on_dots_hover, :rows, :slide, :slides_per_row, :slides_to_show, :slides_to_scroll, :speed, :swipe, :swipe_to_slide, :touch_move, :touch_threshold, :use_css, :variable_width, :vertical, :vertical_swiping, :rtl, :page_id)
  end
end
