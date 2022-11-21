class CreateSemiproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :semiproducts do |t|
      t.string :name
      t.boolean :special_wash
      t.string :part_number
      t.date :date

      t.timestamps
    end
  end
end
