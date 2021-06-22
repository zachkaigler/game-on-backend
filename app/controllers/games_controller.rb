class GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @games, flag: "restrict"
    end

    def show
        @game = Game.find(params[:id])
        render json: @game, flag: "show"
    end
end
