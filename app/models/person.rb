class Person < ActiveRecord::Base
  belongs_to :contact
  belongs_to :availabilities
end
