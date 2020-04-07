class CentresController < ApplicationController
  before_action :find_centre, only: [:show, :edit, :destroy]

  def index
    @centres = Centre.all
  end

  def show; end

  def new
    @centre = Centre.new
  end

  def create
    @centre = Centre.new(centre_params)
    @centre.save
    redirect_to centre_path(@centre) # To validate onces routes are done
  end

  def edit; end

  def update
    @centre.update(centre_params)
    redirect_to centre_path(@centre)
  end

  def destroy
    @centre.destroy
    redirect_to centre_path
  end

  private

  def centre_params
    params.require(:centre).permit(:adresse, :telephone, :info_diverses)
  end

  def find_centre
    @centre = Centre.find(params[:id])
  end
end
