class SpacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @spaces = Space.all
    render json: @spaces.to_json(methods: [:image_url])
  end

  def new
    @space = Space.new
  end

  def create
    @user = current_user
    @space = @user.spaces.create(spaces_params)
    redirect_to root_path
  end
  
  def show
    @space = Space.find(params[:id])
    render json: @space.to_json(methods: [:image_url])
  end
  
  def details
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to, :image)
  end
end

