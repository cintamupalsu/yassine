class SessionsController < ApplicationController

  def new
  end
  
  # click login goes here
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        # Log the user in and redirect to the user's show page.
        log_in user  # calling procedure on session helper
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  #---

  #click logout goes here
  def destroy
    log_out if logged_in?   # calling procedure on session helper
    redirect_to root_url
  end
  #---
end