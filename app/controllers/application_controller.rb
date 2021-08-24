class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about, :public_action]
  before_action :configure_permitted_parameters,if: :devise_controller?

   def after_sign_out_path_for(resource)
      root_path
   end

    def after_sign_in_path_for(resource)
	  user_path(resource)
    end

    # def authenticate_user
    #   @curent_user = curent_user

    # if @current_user == nil

    # redirect_to("/login")

    # end






  private
	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys:[:email])
	end
end
