class CreateTypeequipments < ActiveRecord::Migration[7.0]
  def change
    create_table :typeequipments do |t|
      t.string :name

      t.timestamps
    end
  end
end
