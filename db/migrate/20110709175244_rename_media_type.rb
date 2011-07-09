class RenameMediaType < ActiveRecord::Migration
  def self.up
    rename_column :medias, :mediaType_id, :media_type_id
  end

  def self.down
    rename_column :medias, :media_type_id, :mediaType_id
  end
end
