class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper #Chapter 8.2
  
  #def hello
  #   render html: "hello, world!"
  #end
  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
