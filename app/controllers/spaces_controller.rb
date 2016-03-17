class SpacesController < ApplicationController
  def index
    @spaces = Space.all
    render json: @spaces.to_json(methods: [:image_url])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(spaces_params)
    redirect_to root_path
  end

  private

  def spaces_params
    params.require(:space).permit(:name, :location, :details, :price, :available_from, :available_to, :image)
  end
end
