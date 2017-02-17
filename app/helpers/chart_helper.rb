module ChartHelper
	def populate_sign_up_chart
		data = {}
		User.order(created_at: :asc).each do |user|
			if data[user.created_at.strftime('%x')]
				data[user.created_at.strftime('%x')] += 1
			elsif !data[user.created_at.strftime('%x')]
				data[user.created_at.strftime('%x')] = 1
			end
		end
		data
	end
end