class CreateTimeslots < ActiveRecord::Migration
  def self.up
    create_table :timeslots do
    end

  end

  def self.down
    drop_table :timeslots
  end
end
