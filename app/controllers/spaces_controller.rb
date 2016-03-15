class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(spaces_params)
    redirect_to spaces_path
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to)
  end
end
