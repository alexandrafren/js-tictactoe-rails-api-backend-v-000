class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new(game_params)

  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

    def game_params
      params.require(:game).permit(:state)
    end
    
end
