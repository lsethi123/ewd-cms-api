class Api::TasksController < ApplicationController
  def index
    if params[:company_id]
      @tasks = Task.where(company_id: params[:company_id])
    elsif params[:user_id]
      @tasks = Task.where(user_id: params[:user_id]).limit(5)
    else
      @tasks = Task.all
    end
    render json: @tasks
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render status: 201, json: @task
    else
      render status: 404
    end
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def update
    @task = Task.find(params[:id]).update(task_params)
    render json: @task
  end

  def destroy
    @task = Task.destroy(params[:id])
    render json: @task
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :due_date, :employee_id, :user_id, :company_id)
  end
end
