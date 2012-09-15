class MediaDescriptionToText < ActiveRecord::Migration
  def up    
      change_column :medias, :description, :text    
  end

  def down
  end
end
