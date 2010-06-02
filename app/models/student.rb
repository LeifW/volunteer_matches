class Student < Person 
  
  def find_matches
    availabilities.map{|my| my.timeslot.availabilities.select{|a| a.person.is_a?(Volunteer)}}.flatten.uniq
  end
#  def find_matches
#    Volunteer.find(:all, :conditions=>["id IN (SELECT DISTINCT person_id FROM availabilities_people WHERE availability_id IN (SELECT availability_id FROM availabilities_people WHERE person_id = ?))", id])
#  end
end
