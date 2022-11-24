class AddTypeEquipmentToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :type_equipment, :string
  end
end
