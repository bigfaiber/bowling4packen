class GamesController < ApplicationController

  def new
      @user = User.find(params[:user_id])
      @game = Game.new
  end

  def create
      @user = User.find(params[:user_id])               # Seteamos los parametros para crear el nuevo score
      @game = @user.games.create(post_params)
      @score = ScoreService.new(@game.rolls).scoring    # creamos una instancia de ScoreService para calcular el score y luego subirlo a la db
      @game.update(score: @score)                       # Subimos el score a la db
      redirect_to user_path(current_user.id)
  end

  private
  def post_params
      params.require(:game).permit(:rolls)              # Uso de strongparams
  end

end