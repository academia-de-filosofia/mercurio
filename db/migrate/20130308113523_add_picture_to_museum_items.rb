class AddPictureToMuseumItems < ActiveRecord::Migration

  def self.up
    add_attachment :museum_items, :picture
  end

  def self.down
    remove_attachment :museum_items, :picture
  end

end
