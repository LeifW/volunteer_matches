class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.references :person
      t.references :timeslot
      t.references :match

      t.timestamps
    end
  end

  def self.down
    drop_table :availabilities
  end
end
