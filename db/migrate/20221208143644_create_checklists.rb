class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.references :brew, null: false, foreign_key: true
      t.integer :washer_id
      t.integer :cheking_id
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
