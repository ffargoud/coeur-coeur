class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = policy_scope(User)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:nom, :prenom, :pays, :numero_et_voie, :code_postal, :ville, :date_de_naissance, :nationalite, :numero)
  end
end
