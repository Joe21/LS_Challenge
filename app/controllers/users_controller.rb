class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		print "------------"
		print "backend user controller index action working"
		print "------------"
	end


end