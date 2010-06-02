class AddNativeSpeakerToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :native_speaker, :boolean
  end

  def self.down
    remove_column :people, :native_speaker
  end
end
