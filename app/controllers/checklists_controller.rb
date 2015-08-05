class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
    render json: @checklists
  end

  def create
    @checklist = Checklist.new(checklist_params)
    if @checklist.save
      render status: 201, json: @checklist
    else
      render status: 404
    end
  end

  def show
    @checklist = Checklist.find(params[:id])
    render json: @checklist
  end

  def update
    @checklist = Checklist.find(params[:id]).update(checklist_params)
    render json: @checklist
  end

  def destroy
    @checklist = Checklist.destroy(params[:id])
    render json: @checklist
  end

  private

  def checklist_params
    params.require(:checklist).permit(:step, :description, :todo_id)
  end
end
