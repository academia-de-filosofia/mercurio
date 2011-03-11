class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.string :title
      t.integer :time
      t.string :description
      t.references :mediaType

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
