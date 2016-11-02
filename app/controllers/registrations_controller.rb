class RegistrationsController < Devise::RegistrationsController
  protected

private 
def sign_up_params
	params.require(:user).permit(:name, :email, :shipper, :password, :password_confirmation)
end

def user_params
	params.require(:user).permit(:name, :email, :shipper)
end

end




