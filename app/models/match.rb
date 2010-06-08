class Match < ActiveRecord::Base
  belongs_to :student
  belongs_to :volunteer
  has_many :availabilities
end
