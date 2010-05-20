class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml  => @student.to_xml(:include => :availabilities) }
      format.json { render :json => @student.to_json(:include => :availabilities) }
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

end
