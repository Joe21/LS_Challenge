module Api::V1
	class ApiController < ApplicationController
		# Disable Token check for namespaced API
		skip_before_filter :verify_authenticity_token
		# Ensure all controllers inheriting from API controller only work when authenticated
		before_action :authenticate_user!
	end
end