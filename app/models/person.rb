class Person < ActiveRecord::Base
  set_primary_key 'id'
  validates_presence_of :id
  has_many :contacts
  has_many :availabilities
  has_many :matches
end
