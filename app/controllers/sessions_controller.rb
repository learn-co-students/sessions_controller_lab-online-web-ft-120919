# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    session[:name] = params[:name] if params[:name] && !params[:name].empty?
    redirect_to sessions_new_path if session[:name].nil?
    redirect_to root_path if session[:name]
  end

  def destroy
    session[:name].nil? ? nil : session.delete(:name)
  end
end
