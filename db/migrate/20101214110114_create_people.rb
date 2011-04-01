class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :birth_date
      t.string :gender
      t.string :marital_status
      t.string :home_phone
      t.string :work_phone
      t.string :cell_phone
      t.string :email
      t.string :zip_code
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.date :sign_up_date
      t.date :graduation_date
      t.date :exit_date
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
