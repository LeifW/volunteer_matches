class VolunteersController < ApplicationController

  def show
    @volunteer = Volunteer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml  => @volunteer.to_xml(:include => :availabilities) }
      format.json { render :json => @volunteer.to_json(:include => :availabilities) }
    end
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

end
