class AddPriceToMedia < ActiveRecord::Migration
  def self.up
    add_column :medias, :price, :double
  end

  def self.down
    remove_column :medias, :price
  end
end
