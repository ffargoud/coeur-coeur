class CentresController < ApplicationController
  before_action :find_centre, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [:index]

  def index
    # @centres = Centre.all
    @centres = policy_scope(Centre)
  end

  def show
    find_centre
  end

  def new
    @centre = Centre.new
    authorize @centre
  end

  def create
    @centre = Centre.new(centre_params)
    @centre.user = current_user
    authorize @centre

    if @centre.save
      redirect_to centres_path
    else
      render "new"
    end
  end

  def edit
    find_centre
  end

  def update
    find_centre
    @centre.update(centre_params)
    redirect_to centre_path(@centre)
  end

  def destroy
    find_centre
    @centre.destroy
    redirect_to centre_path
  end

  private

  def centre_params
    params.require(:centre).permit(:name, :adresse, :telephone, :info_diverses)
  end

  def find_centre
    @centre = Centre.find(params[:id])
    authorize @centre
  end
end
