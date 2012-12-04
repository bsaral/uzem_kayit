class SessionsController < ApplicationController
  def create
  user = User.find_by_username(params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to ("/admin")
  else
    flash.now.alert = "Invalid username or password"
    render "new"
  end
 end
 
 def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
