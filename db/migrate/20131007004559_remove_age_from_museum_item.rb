class RemoveAgeFromMuseumItem < ActiveRecord::Migration
  def up
    remove_column :museum_items, :age
  end

  def down
    add_column :museum_items, :age, :string
  end
end
