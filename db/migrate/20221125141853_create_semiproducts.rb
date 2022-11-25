class CreateSemiproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :semiproducts do |t|
      t.string :name
      t.string :series

      t.timestamps
    end
  end
end
