class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to :root
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.clear if !session[:name].nil?
    redirect_to :root
  end 
end
