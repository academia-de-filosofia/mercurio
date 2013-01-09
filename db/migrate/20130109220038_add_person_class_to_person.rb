class AddPersonClassToPerson < ActiveRecord::Migration
  def change
  	 add_column :people, :person_class, :string
  end
end
