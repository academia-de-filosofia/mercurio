class AddAuthorToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :author, :string
  end

  def self.down
    remove_column :medias, :author
  end
end
