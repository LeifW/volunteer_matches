class ServiceLearning < ActiveRecord::Base
  belongs_to :volunteer, :foreign_key => 'person_id'
end
