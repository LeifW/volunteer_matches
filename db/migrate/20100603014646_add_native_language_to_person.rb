class AddNativeLanguageToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :native_language, :string
  end

  def self.down
    remove_column :people, :native_language
  end
end
