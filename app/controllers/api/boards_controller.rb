class Api::BoardsController < ApplicationController
  def index
    @boards = Board.all
    render json: @boards
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      render status: 201, json: @board
    else
      render status: 404
    end
  end

  def show
    @board = Board.find(params[:id])
    render json: @board
  end

  def update
    @board = Board.find(params[:id]).update(board_params)
    render json: @board
  end

  def destroy
    @board = Board.destroy(params[:id])
    render json: @board
  end

  private

  def board_params
    params.require(:board).permit(:title, :description, :team_id)
  end
end
