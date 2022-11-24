class TypeequipmentController < ApplicationController
  def new
    @typeequipment = Typeequipment.new
  end
  
  def create
    Typeequipment.create(typeequipment_params)
    redirect_to typeequipments_path
  end

  def index
    @typeequipment = Typeequipment.new
    @typeequipments = Typeequipment.all
  end

  def destroy
    @typeequipment = Typeequipment.find(params[:id])
    @typeequipment.destroy
    redirect_to typeequipments_path, notice: 'Тип оборудования удален'
  end

  private

  def typeequipment_params
    params.require(:typeequipment).permit(:name)
  end
end
