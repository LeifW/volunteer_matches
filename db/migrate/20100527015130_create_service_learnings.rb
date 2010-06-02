class CreateServiceLearnings < ActiveRecord::Migration
  def self.up
    create_table :service_learnings do |t|
      t.string :class_name
      t.string :instructor
      t.integer :hours
      t.references :person

      t.timestamps
    end
  end

  def self.down
    drop_table :service_learnings
  end
end
