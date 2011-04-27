class AddCodeToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :code, :integer
  end

  def self.down
    remove_column :medias, :code
  end
end
