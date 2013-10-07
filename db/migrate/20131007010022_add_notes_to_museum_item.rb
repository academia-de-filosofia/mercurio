class AddNotesToMuseumItem < ActiveRecord::Migration
  def change
    add_column :museum_items, :notes, :string
  end
end
