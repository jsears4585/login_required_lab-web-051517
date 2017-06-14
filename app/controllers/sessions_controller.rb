require 'byebug'

class SessionsController < ApplicationController

  def new
  end

  def create
    return redirect_to :root if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to secrets_show_path
  end

  def destroy
    session[:name] = nil unless session[:name].nil?
    redirect_to :root, status: 200
  end

end
