class Timeslot < ActiveRecord::Base
  DAYS_OF_WEEK = %w"Sunday Monday Tuesday Wednesday Thursday Friday Saturday Doomsday"
  has_many :availabilities
  
  # The id of instances of this class represent an hour of the week, from 1-168.
  #
  def to_s
    day = DAYS_OF_WEEK[id / 24]
    hour = id % 24
    day + " " + hour.to_s + ":00"
  end
end
