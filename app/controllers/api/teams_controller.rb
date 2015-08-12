class Api::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      render status: 201, json: @team
    else
      render status: 404
    end
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  def update
    @team = Team.find(params[:id]).update(team_params)
    render json: @team
  end

  def destroy
    @team = Team.destroy(params[:id])
    render json: @team
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
