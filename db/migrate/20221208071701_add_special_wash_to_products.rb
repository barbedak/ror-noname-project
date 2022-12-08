class AddSpecialWashToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :special_wash, :boolean
  end
end
