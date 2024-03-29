class RequestsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def  new 
  end

  def create
    space = Space.find(params[:space_id])
    @request = space.requests.new(from: params[:from],
                                  to: params[:to],
                                  user_id: current_user.id, 
                                  space_name: space.name, 
                                  status: "not confirmed")
    @request.save
    redirect_to account_requests_path
  end

  def user_spaces
    render json: current_user.spaces
  end

  private
end
