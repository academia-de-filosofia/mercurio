class AddAcronymToGenre < ActiveRecord::Migration
  def self.up
    add_column :genres, :acronym, :string
  end

  def self.down
    remove_column :genres, :acronym
  end
end
