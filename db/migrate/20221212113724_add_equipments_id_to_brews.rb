class AddEquipmentsIdToBrews < ActiveRecord::Migration[7.0]
  def change
    add_column :brews, :equipments_id, :integer
  end
end
