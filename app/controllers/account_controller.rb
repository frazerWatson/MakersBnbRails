class AccountController < ApplicationController
  def index
    render json: current_user.requests
  end
  
  def requests
  end
end
