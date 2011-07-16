class CreateMediaStatuses < ActiveRecord::Migration
  def self.up
    create_table :media_statuses do |t|
      t.string :description
      t.timestamps
    end
    change_table :medias do |t|
      t.references :media_status
    end
  end

  def self.down
    drop_table :media_statuses
    change_table :medias do |t|
      t.remove_references :media_status
    end
  end
end
