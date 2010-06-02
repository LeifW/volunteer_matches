class CreateContactMethods < ActiveRecord::Migration
  def self.up
    create_table :contact_methods do |t|
      t.string :name
      t.references :match

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_methods
  end
end
