module Api::V1
	class ChartsController < ApiController
		# require 'pp'

		# GET /v1/sign_up_chart
		def sign_up_chart
			data = {}
			User.order(created_at: :asc).each do |user|
				if data[user.created_at.strftime('%x')]
					data[user.created_at.strftime('%x')] += 1
				elsif !data[user.created_at.strftime('%x')]
					data[user.created_at.strftime('%x')] = 1
				end
			end

			respond_to do |format|
				format.json { render :json => data }
			end
		end # <---- end of sign_up_chart action

	end # <---- end of ChartsController class
end