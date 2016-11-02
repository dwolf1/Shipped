class JobsController < ApplicationController
# testing miguel
  def index
    @message = "These are all of our shipping jobs"
    @jobs = Job.all

  end

  def show
     @job = Job.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
    @message = "form for jober. after devics sign up that users should be drected to this page"
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
  end

  #--------------
private 

 def job_params
        params.require(:job).permit(:title, :description, :origin, :destination, :cost, :cost_of_job, :user_id)
  end

end
