class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user_permition!      #helper creado para evitar que los usuarios puedan acceder a las vistas de otros usuarios.
  def show
    @user = User.find(params[:id])
    @games = @user.games

  end
end