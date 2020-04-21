class RegistrationsController < Devise::RegistrationsController

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:nom, :prenom, :pays, :numero_et_voie, :code_postal, :ville, :date_de_naissance, :nationalite, :numero)
  end
end
