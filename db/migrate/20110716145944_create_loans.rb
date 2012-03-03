class CreateLoans < ActiveRecord::Migration

  def self.up
    drop_table :loans
    create_table :loans do |t|
      t.references :media
      t.references :person
      t.date :lent_at
      t.date :return_preview_date
      t.date :returned_at
      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
  
end
