class AddInventoryNumberToMuseumItem < ActiveRecord::Migration
  def change
    add_column :museum_items, :inventory_number, :string
  end
end
