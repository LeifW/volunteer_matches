class AddIndexToPeopleAvailabilitesJoinTable < ActiveRecord::Migration
  def self.up
    add_index(:availabilities_people, :availability_id)
    add_index(:availabilities_people, :person_id)
  end

  def self.down
    remove_index(:availabilities_people, :availability_id)
    remove_index(:availabilities_people, :person_id)
  end
end
