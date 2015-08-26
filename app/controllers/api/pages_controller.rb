class Api::PagesController < ApplicationController
  def index
    if params[:website_id]
      @pages = Page.where(website_id: params[:website_id])
    else
      @pages = Page.all
    end
    render json: @pages
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      render status: 201, json: @page
    else
      render status: 404
    end
  end

  def show
    @page = Page.find(params[:id])
    render json: @page
  end

  def update
    @page = Page.find(params[:id]).update(page_params)
    render json: @page
  end

  def destroy
    @page = Page.destroy(params[:id])
    render json: @page
  end

  private

  def page_params
    params.require(:page).permit(:title, :website_id)
  end
end
