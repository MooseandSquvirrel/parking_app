class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to new_user_session_path, alert: "You need to sign in to access this page."
        ## if you want render 404 page
        ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
      end
    end

    def authorize_staff!
      if not current_user.is_staff?
        redirect_to root_path, alert: "You're not authorized to access this page."
      end
    end
end
