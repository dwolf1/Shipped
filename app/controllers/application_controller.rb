class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if current_user.shipper == "Shipper"
  		boats_path
  	else 
  		jobs_path
  	end
  end
# testing ========
def show 
@job = Job.find(params[:id])  
@job_and_boats = @job.boats
p @job_and_boats
#===================
end
end
