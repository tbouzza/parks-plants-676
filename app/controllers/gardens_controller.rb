class GardensController < ApplicationController
  before_action :set_garden, only: [:show]

  # GET /gardens
  def index
    @gardens = Garden.all
  end

  # GET /gardens/1
  def show
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :banner_url)
  end
end
