class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render status: 201, json: @tag
    else
      render status: 404
    end
  end

  def show
    @tag = Tag.find(params[:id])
    render json: @tag
  end

  def update
    @tag = Tag.find(params[:id]).update(tag_params)
    render json: @tag
  end

  def destroy
    @tag = Tag.destroy(params[:id])
    render json: @tag
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :posts, :post_ids)
  end

end
