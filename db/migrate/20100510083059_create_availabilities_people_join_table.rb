class CreateAvailabilitiesPeopleJoinTable < ActiveRecord::Migration
  def self.up
    create_table :availabilities_people, :id => false do |t|
      t.references availability
      t.references person
    end
  end

  def self.down
    drop_table :availabilities_people
  end
end
