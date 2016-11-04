class JobsController < ApplicationController
# testing miguel
  def index
    @jobs = Job.all
  end

  def show
     @job = Job.find(params[:id])
    # testing ========
    @job_and_boats = @job.boats
    p @job_and_boats
      #===================
     #@boat = Boat.find(params[:user_id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render edit_job_path
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render new_job_path
    end
  end


  def destroy
    Job.delete(params[:id])
  redirect_to url_for(:controller => :jobs, :action => :index)
  end

  #--------------
private

 def job_params
    params.require(:job).permit(:title, :description, :origin, :destination, :cost, :cost_of_job, :user_id)
  end

end
