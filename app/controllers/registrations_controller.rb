class RegistrationsController < Devise::RegistrationsController

  def index
    @registrations = policy_scope(Registration)
    @user = User.find(params[:user_id])
  end

  def edit
    @registration = Registration.find(params[:user_id])
    authorize @registration
  end

  private

  def user_params
    params.require(:user_id).permit(:nom, :prenom, :pays, :numero_et_voie, :code_postal, :ville, :date_de_naissance, :nationalite, :numero)
  end
end
