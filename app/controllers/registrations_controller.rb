class RegistrationsController < Devise::RegistrationsController

  def index
    @registrations = policy_scope(Registration)
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @registration = Registration.find(params[:id])
    authorize @registration
  end

  private

  def user_params
    params.require(:id).permit(:nom, :prenom, :pays, :numero_et_voie, :code_postal, :ville, :date_de_naissance, :nationalite, :numero)
  end
end
