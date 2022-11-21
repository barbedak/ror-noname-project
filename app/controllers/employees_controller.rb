class EmployeesController < ApplicationController

  def create
    employee = Employee.create(employee_params)
    redirect_to employee_path(employee), notice: "Пользователь создан!"
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee), notice: "Сохранили пользователя!"
  end

  def destroy
    @employee.destroy
    resirect_to employees_path, notice: "Пользователь удален!"
  end

  def index
    @employee = Employee.new
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :job_title, :login, :password)
  end
end