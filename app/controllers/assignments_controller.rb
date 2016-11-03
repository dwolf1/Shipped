class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.create(boat_id: params[:boat], job_id: params[:assignment][:job_id])
    if @assignment.save
      redirect_to "/"
    else
      render jobs_path
    end
    # @boat = Boat.find_by(:boat [:id])
  end
end
