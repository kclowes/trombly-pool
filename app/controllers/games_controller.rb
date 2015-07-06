class GamesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game
    if @game.save
      redirect_to games_path, notice: "Bowl game added successfully!"
    else
      render :new
    end
  end

  def index
    @games = Game.all
  end

  private

  def game_params
    params.require(:game).permit(:home_team, :away_team, :bowl)
  end
end
