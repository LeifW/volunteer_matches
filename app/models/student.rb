class Student < Person 
  def matches
    Volunteer.find(:all, :conditions=>["id IN (SELECT DISTINCT person_id FROM availabilities_people WHERE availability_id IN (SELECT availability_id FROM availabilities_people WHERE person_id = ?))", id])
  end
end
