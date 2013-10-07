class AddAcquisitionDateToMuseumItem < ActiveRecord::Migration
  def change
    add_column :museum_items, :acquisition_date, :string
  end
end
