class Api::TodosController < ApplicationController
  def index
    if params[:user_id]
      @todos = Todo.where(user_id: params[:user_id]).limit(5)
    else
      @todos = Todo.all
    end
    render json: @todos
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render status: 201, json: @todo
    else
      render status: 404
    end
  end

  def show
    @todo = Todo.find(params[:id])
    render json: @todo
  end

  def update
    @todo = Todo.find(params[:id]).update(todo_params)
    render json: @todo
  end

  def destroy
    @todo = Todo.destroy(params[:id])
    render json: @todo
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :user_id, :board_id)
  end
end
