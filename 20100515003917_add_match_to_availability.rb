class AddMatchToAvailability < ActiveRecord::Migration
  def self.up
    add_column :availabilities, :match_id, :integer
  end

  def self.down
    remove_column :availabilities, :match_id
  end
end
