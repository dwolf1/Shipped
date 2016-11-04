class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if current_user.shipper == "Shipper"
  		boats_path
  	else 
  		jobs_path
  	end
  end


end
