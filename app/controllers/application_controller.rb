class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name , :role])
    end
    private

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end

end