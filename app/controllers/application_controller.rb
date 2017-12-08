class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource

  protected
  	def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nom,:prenom,:pseudo])
    end

    def after_sign_in_path_for(resource_or_scope)
       gesier_path
    end

  	def layout_by_resource
      if devise_controller?
        "auth"
      else
        "application"
      end
    end
end
