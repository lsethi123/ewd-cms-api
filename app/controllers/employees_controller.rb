class EmployeesController < ApplicationController
  def index
    @employees = Employee.where(company_id: params[:company_id])
    render json: @employees
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render status: 201, json: @employee
    else
      render status: 404
    end
  end

  def show
    @employee = Employee.find(params[:id])
    render json: @employee
  end

  def update
    @employee = Employee.find(params[:id]).update(employee_params)
    render json: @employee
  end

  def destroy
    @employee = Employee.destroy(params[:id])
    render json: @employee
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :role, :title, :phone, :company_id)
  end
end
