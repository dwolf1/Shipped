class AssignmentsController < ApplicationController
skip_before_filter  :verify_authenticity_token

def index
  @assignments = Assignment.all
  @boat = Boat.all
  @job = Job.all
  @message = "this is a message"
end

  def create
      @assignment = Assignment.create(boat_id: params[:assignment][:boat_id], job_id: params[:assignment][:job_id])
    if @assignment.save
      redirect_to "/assignments"
    else
      render boats_path
    end
  end
end
