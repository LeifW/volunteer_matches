class Availability < ActiveRecord::Base
  belongs_to :person
  belongs_to :timeslot
  belongs_to :match
end
