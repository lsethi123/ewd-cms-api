class Api::OpportunitiesController < ApplicationController
  def index
    if params[:company_id]
      @opportunities = Opportunity.where(company_id: params[:company_id])
    else
      @opportunities = Opportunity.all
    end
    render json: @opportunities
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      render status: 201, json: @opportunity
    else
      render status: 404
    end
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    render json: @opportunity
  end

  def update
    @opportunity = Opportunity.find(params[:id]).update(opportunity_params)
    render json: @opportunity
  end

  def destroy
    @opportunity = Opportunity.destroy(params[:id])
    render json: @opportunity
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:title, :stage, :estimated_close, :estimated_amount, :company_id)
  end
end
