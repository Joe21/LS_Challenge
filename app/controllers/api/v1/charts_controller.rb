module Api::V1
	class ChartsController < ApiController
		include ChartHelper
		# GET /v1/sign_up_chart
		def sign_up_chart
			# Populate data using ChartHelper Module
			data = populate_sign_up_chart
			respond_to do |format|
				format.json { render :json => data }
			end
		end # <---- end of sign_up_chart action

	end # <---- end of ChartsController class
end