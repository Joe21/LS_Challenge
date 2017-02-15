class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
		print "------------"
		print "index action working"
		print "------------"
	end

	def edit
		print "------------"
		print "edit action working"
		print "------------"
	end

	def update
		print "------------"
		print "update action working"
		print "------------"
	end

end