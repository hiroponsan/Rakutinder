class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit :nickname, :gender, :email, :password, :password_confirmation, :date_1, :date_2, :date_1_time, :date_2_time, :avatar
      end
    end
end