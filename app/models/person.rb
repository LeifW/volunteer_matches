class Person < ActiveRecord::Base
  set_primary_key 'id'
  has_many :contacts
  has_and_belongs_to_many :availabilities
end
