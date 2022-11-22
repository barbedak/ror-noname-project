class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[update destroy edit]

  def create
    if employee_params[:name].present? && employee_params[:login].present? && employee_params[:job_title].present?
      employee = Employee.create(employee_params)
      redirect_to employees_path, notice: "Пользователь создан!"
    else
      redirect_to new_employee_path(employee), notice: 'Имя, Логин и Должность должны быть заполнены!'
    end
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee), notice: "Сохранили сотрудника!"
  end

  def destroy
    @employee.destroy
    redirect_to employees_path, notice: "Сотрудник удален!"
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

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
