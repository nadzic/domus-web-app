class SessionsController < ApplicationController

  def create 
    driver = Driver.find_by(driver_name: params[:session][:driver_name])
    if driver && driver.authenticate(params[:session][:password])
      log_in driver
      redirect_to static_pages_panel_url
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end  
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
