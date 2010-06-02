class Volunteer < Person 
  has_one :service_learning, :foreign_key => 'person_id'
  def find_matches
    availabilities.map{|my| my.timeslot.availabilities.select{|a| a.person.is_a?(Student)}}.flatten.uniq
  end
  #  Student.find(:all, :conditions=>["id IN (SELECT DISTINCT person_id FROM availabilities_people WHERE availability_id IN (SELECT availability_id FROM availabilities_people WHERE person_id = ?))", id])
end
