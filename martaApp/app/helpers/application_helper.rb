module ApplicationHelper
	def hash_and_msg_generator(results, station)

		@message = ""

		@buses ={}

		results.each do |result|
			if result["TIMEPOINT"].include? station
				# if the user's selection maching an up-coming bus stop inthe api data, we will save that info in our hash
				@buses[result["ROUTE"]] = result["VEHICLE"]
			end
		end

		if @buses.count == 0
			#no buses have the user's station as their next stop.
			@message = "sorry, it's gonna be a while."
		elsif @buses.count == 1
			#one bus will be making the user's station it's next stop
			@message = "A bus is on the way!"
		elsif @buses.count > 1
			#two or more buses willbe making the user's station their next stop
			@message = "These buses will be coming soon:"
		else
			#just in case we end up with a negative number some how who knows
			@message = "oops.. I htink there was a slight error."
		end
	end
end
