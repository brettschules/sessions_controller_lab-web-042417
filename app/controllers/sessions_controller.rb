class SessionsController < ApplicationController
  def new
    if session[:name] == nil
      redirect_to login_path
    end
  end

  def create

    unless params[:name] == nil || params[:name] == ""
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
  end
end
