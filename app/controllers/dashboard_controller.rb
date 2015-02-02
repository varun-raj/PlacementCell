class DashboardController < ApplicationController
  def index

    if admin_signed_in?

  	@students = Student.all
  else
     redirect_to new_admin_session_path
  end
    
  end

  def events
    if admin_signed_in?
  	@events = Event.all
  	@new_event = Event.new
     else
     redirect_to new_admin_session_path
  end
    
  end


  def students
    if admin_signed_in?

  	@students = Student.all
     else
     redirect_to new_admin_session_path
  end
    
  end

  def departments
    if admin_signed_in?
    
  	@departments = Department.all
     else
     redirect_to new_admin_session_path
  end
    

  end
end
