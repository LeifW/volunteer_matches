class Person < ActiveRecord::Base
  has_many :contacts
  has_and_belongs_to_many :availabilities
end
