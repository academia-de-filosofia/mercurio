class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :birth_date
      t.string :gender
      t.string :civil_state
      t.string :home_phone
      t.string :comercial_phone
      t.string :cel_phone
      t.string :cep
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.date :sign_up_date
      t.date :graduation_date
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
