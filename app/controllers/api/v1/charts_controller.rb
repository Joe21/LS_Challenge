module Api::V1
	class ChartsController < ApiController
		require 'pp'

		# GET /v1/sign_up_chart
		def sign_up_chart
			query = User.order(created_at: :desc)
			puts "------------------------------"
			pp query
			puts "------------------------------"


		end


	end
end