module Api::V1
	class ChartsController < ApiController

		# GET /v1/sign_up_chart
		def sign_up_chart
			puts "------------------------------"
			puts "this is being hit on the back"
			puts "------------------------------"

			query = User.order(created_at: :desc)



		end


	end
end