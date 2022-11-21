class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.date :date
      t.time :time
      t.string :equipment
      t.string :semiproduct_name
      t.string :semiproduct_part_number
      t.integer :wash_employee_id
      t.integer :checking_employee_id

      t.timestamps
    end
  end
end
