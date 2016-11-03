class AssignmentsController < ApplicationController
skip_before_filter  :verify_authenticity_token
  def create
    p "it was here"
    @assignment = Assignment.create(boat_id: params[:boat], job_id: params[:assignment][:job_id])
    if @assignment.save
      redirect_to "/"
    else
      render jobs_path
    end
    # @boat = Boat.find_by(:boat [:id])
  end
end
