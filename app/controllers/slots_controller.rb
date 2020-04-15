class SlotsController < ApplicationController
  def index
    @slots = policy_scope(Slot).order(create_at: :asc)
    @centre = Centre.all(params[:center_id])
  end

  def show
    @slot = Slot.find(params[:id])
    authorize @slot
  end

  def new
    @slot = Slot.new
    @centre = Centre.find(params[:center_id])
    authorize @slot
  end

  def create
    @slot = Slot.new(params_slots)
    @slot.centre = Centre.find(params[:center_id])
    authorize @slot

    if @slot.save
      redirect_to centre_slots_path
    else
      render :new
    end
end

  def edit
  end

  def update
  end

  def destroy
    @slot = Slot.find(params[:id])
    authorize @slot
    @slot.destroy
    redirect_to centre_slots_path notice: "Le créneau a bien été supprimé"
  end

private

  def params_slots
    params.require(:slot).permit(:date, :h_debut, :h_fin, :type_mission, :consignes, :center_id)
  end


