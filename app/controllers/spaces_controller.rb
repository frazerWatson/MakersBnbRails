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
    @space = Space.create(spaces_params)
    if @space.save
      redirect_to root_path
    else
      flash.keep[:notice] = "You must fill in all fields..."
      redirect_to new_space_path
    end
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to, :image)
  end
end
