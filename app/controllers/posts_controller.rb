class PostsController < ApplicationController

  def index
    if params[:published]
      @posts = Post.where(published: params[:published])
    else
      @posts = Post.all
    end
    render json: @posts
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render status: 201, json: @post
    else
      render status: 404
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def update
    @post = Post.find(params[:id]).update(post_params)
    render json: @post
  end

  def destroy
    @post = Post.destroy(params[:id])
    render json: @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :body, :published, :tags, :tag_ids)
  end
end
