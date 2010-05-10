class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people, :id=>false, :primary_key=>:id do |t|
      t.integer :id
      t.string :name
      t.boolean :male
      t.references :contact
      t.text :address
      t.boolean :contact_permission
      t.references :availabilities
      t.integer :weekly_hours
      t.text :comments
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
