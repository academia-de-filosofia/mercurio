class RemoveTechniqueFromMuseumItem < ActiveRecord::Migration
  def up
    remove_column :museum_items, :technique
  end

  def down
    add_column :museum_items, :technique, :string
  end
end
