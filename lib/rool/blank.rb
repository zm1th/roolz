module Rool
	class Blank < Basic
		def process(data)
			#I orignally tried to use .blank? but realized it's only a rails function. This way it checks it twice. I would prefer something a bit dryer.
			#I wasn't sure if this is what you meant by a failed rule. In this particular rule, I set it so that if data is found in the argument being passed through, then a message is set.
			@result = data.nil? || data.empty?
			if @result == false
				@message = 'Data has been found.'
			end
			return @result
		end
	end
end