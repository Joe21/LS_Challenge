class GamesController < ApplicationController
	before_action :authenticate_user!
	before_action :return_game, only: [:show, :edit, :update, :destroy]

	def index
		@games = Game.all
	end

	def show
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)

		if @game.save
			redirect_to @game
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @game.update(game_params)
			redirect_to @game
		else
			render :edit
		end
	end

	def destroy
		@game.destroy
		redirect_to games_url
	end

	# Private Methods
	private
	def return_game
		@game = Game.find(params[:id])
	end

	def game_params
		params.require(:game).permit(:name)
	end
end