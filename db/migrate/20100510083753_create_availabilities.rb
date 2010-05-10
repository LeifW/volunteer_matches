class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do
    end

  end

  def self.down
    drop_table :availabilities
  end
end
