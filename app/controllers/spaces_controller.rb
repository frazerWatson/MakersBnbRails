class SpacesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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

  def update
    @space = Space.find(params[:id])
    if current_user.id == @space.user_id then @space.update(spaces_params) end
    redirect_to '/user/listings'
  end

  def show
    @space = Space.find(params[:id])
    render json: @space.to_json(methods: [:image_url])
  end

  def details
  end

  def destroy
    space = Space.find(params[:id])
    if current_user.id == space.user_id then space.destroy end
    redirect_to '/user/listings'
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to, :image)
  end
end

