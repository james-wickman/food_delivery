class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  	session[:order_id] = nil
  end
end
