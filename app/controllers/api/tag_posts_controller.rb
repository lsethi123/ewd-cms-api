class Api::TagPostsController < ApplicationController

  def index
    @tags = TagPost.all
    render json: @tags
  end

  def create
    @tag = TagPost.new(tag_params)
    if @tag.save
      render status: 201, json: @tag
    else
      render status: 404
    end
  end

  def show
    @tag = TagPost.find(params[:id])
    render json: @tag
  end

  def update
    @tag = TagPost.find(params[:id]).update(tag_params)
    render json: @tag
  end

  def destroy
    @tag = TagPost.destroy(params[:id])
    render json: @tag
  end

  private

  def tag_params
    params.require(:tag_post).permit(:tag_id, :post_id)
  end

end
