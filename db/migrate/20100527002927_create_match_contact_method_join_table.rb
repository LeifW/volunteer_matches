class CreateMatchContactMethodJoinTable < ActiveRecord::Migration
  def self.up
    create_table :contact_methods_matches, :id => false do |t|
      t.references :contact_method
      t.references :match
    end
    add_index :contact_methods_matches, [:contact_method_id, :match_id]
  end

  def self.down
    drop_table :contact_methods_matches
  end
end
