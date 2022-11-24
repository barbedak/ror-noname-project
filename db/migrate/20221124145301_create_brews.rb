class CreateBrews < ActiveRecord::Migration[7.0]
  def change
    create_table :brews do |t|
      t.string :batch
      t.date :date
      t.string :semiproduct_series
      t.string :semiproduct_name
      t.boolean :special_wash

      t.timestamps
    end
  end
end
