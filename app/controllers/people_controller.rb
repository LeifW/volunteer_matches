class PeopleController < ApplicationController
#  active_scaffold :person do |config|
    #config.label = "Customers"
#    config.columns.add :id 
    #columns[:phone].label = "Phone #"
    #columns[:phone].description = "(Format: ###-###-####)"
#  end

  def show
    @person = Person.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml  => @person.to_xml(:include => :availabilities) }
      format.json { render :json => @person.to_json(:include => :availabilities) }
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

end
