class AddLoanDaysToMediaType < ActiveRecord::Migration
  def self.up
    add_column :media_types, :loan_days, :integer
  end

  def self.down
    remove_column :media_types, :loan_days
  end
end
