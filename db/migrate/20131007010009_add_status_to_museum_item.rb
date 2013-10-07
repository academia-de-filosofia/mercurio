class AddStatusToMuseumItem < ActiveRecord::Migration
  def change
    add_column :museum_items, :status, :string
  end
end
