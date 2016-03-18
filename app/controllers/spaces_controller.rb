class SpacesController < ApplicationController
  before_action :authenticate_user!

  def index
    @spaces = Space.all
    render json: @spaces.to_json(methods: [:image_url])
  end

  def new
    @space = Space.new
  end

  def individual_user
    render json: current_user.spaces.to_json(methods: [:image_url]) 
  end

  def listings
  end

  def create
    if @space = current_user.spaces.create(spaces_params)
      redirect_to root_path
    else
      redirect_to new_space_path
    end
  end

  def edit
    @space = Space.find(params[:id])
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to, :image)
  end
end
