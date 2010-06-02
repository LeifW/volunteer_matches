class AddStartDateToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :start_date, :datetime
    add_column :matches, :contact_date, :datetime
  end

  def self.down
    remove_column :matches, :contact_date
    remove_column :matches, :start_date
  end
end
