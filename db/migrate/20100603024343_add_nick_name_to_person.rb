class AddNickNameToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :nickname, :string
  end

  def self.down
    remove_column :people, :nickname
  end
end
