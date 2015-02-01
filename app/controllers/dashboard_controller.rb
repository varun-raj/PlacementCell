class DashboardController < ApplicationController
  def index
  	@students = Student.all
  end

  def events
  	@events = Event.all
  	@new_event = Event.new
  end

  def students
  	@students = Student.all
  end

  def departments
  	@departments = Department.all

  end
end
