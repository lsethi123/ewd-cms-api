class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render status: 201, json: @category
    else
      render status: 404
    end
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def update
    @category = Category.find(params[:id]).update(category_params)
    render json: @category
  end

  def destroy
    @category = Category.destroy(params[:id])
    render json: @category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
