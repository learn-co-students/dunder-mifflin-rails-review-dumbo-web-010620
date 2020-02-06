class EmployeesController < ApplicationController
  before_action :set_employee, only: [ :show, :edit, :update ]

  def index
     @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params)
    redirect_to employee_path(@employee)
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :dog_id, :img_url)
  end
end
