class SessionsController < ApplicationController

  def new
  end

  def create 
    user = User.find(username: params[:session][:username])
    if user && user.authenticate(params[:session][:passowrd])
      # code comes here
    else
      render 'new'
    end  
  end
  
  def destroy
  end
end
