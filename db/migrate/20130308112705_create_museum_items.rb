class CreateMuseumItems < ActiveRecord::Migration
  def change
    create_table :museum_items do |t|
      t.string :name
      t.string :origin
      t.string :description
      t.string :age
      t.string :material
      t.string :technique
      t.float :height
      t.float :width
      t.float :depth

      t.timestamps
    end
  end
end
