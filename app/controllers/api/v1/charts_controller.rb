module Api::V1
	class ChartsController < ApiController
		require 'pp'

		# GET /v1/sign_up_chart
		def sign_up_chart
			# query = User.order(created_at: :desc)
			# puts "------------------------------------------------------------"
			# pp query.first.created_at.strftime('%x')
			# puts "------------------------------------------------------------"

			data = {}
			User.order(created_at: :asc).each do |user|
				if data[user.created_at.strftime('%x')]
					data[user.created_at.strftime('%x')] += 1
				elsif !data[user.created_at.strftime('%x')]
					data[user.created_at.strftime('%x')] = 1
				end
			end

			puts "=========================================="
			pp data
			puts "=========================================="
		
			respond_to do |format|
				format.json { render :json => data }
			end
		end


	end
end