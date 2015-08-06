class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render status: 201, json: @company
    else
      render status: 404
    end
  end

  def show
    @company = Company.find(params[:id])
    render json: @company
  end

  def update
    @company = Company.find(params[:id]).update(company_params)
    render json: @company
  end

  def destroy
    @company = Company.destroy(params[:id])
    render json: @company
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :address, :city, :state, :phone, :email)
  end

end
