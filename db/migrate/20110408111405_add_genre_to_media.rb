class AddGenreToMedia < ActiveRecord::Migration
  def self.up
     change_table :medias do |t|
       t.references :genre
     end
  end

  def self.down
      remove_column :genre_id
  end
end
