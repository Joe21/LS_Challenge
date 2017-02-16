class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :return_user, only: [:edit, :update]

	def index
		# ensure editted users do not overlap order vs .all
		@users = User.order(id: :asc)
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to :root
		else
			render :action => :edit
		end
	end

	# --------------------------------------------------------
	private

	def return_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :fav_game)
	end

end