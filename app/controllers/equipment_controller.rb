class EquipmentController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def index
    @equipment = Equipment.new
    @equipments = Equipment.all
  end

  def create
    Equipment.create(equipment_params)
    redirect_to equipments_path
  end

  def destroy
    equipment = Equipment.find(params[:id])
    equipment.destroy
    redirect_to equipments_path
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :type_equipment)
  end
end
