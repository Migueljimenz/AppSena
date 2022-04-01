class ApplicationController < ActionController::Base

    include Pundit::Authorization
    protect_from_forgery with: :exception
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
 
 private
    def user_not_authorized
       flash[:notice] = "no tiene permisos para esta accion"
       redirect_to(request.referrer || root_path)
    end
 
 end
