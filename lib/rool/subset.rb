module Rool
	class Subset < Basic
		def process(data)
			@result = (@operand & data ) == data
			if @result == false
				return @message = "The provided array is not a subset of dataset array"
			else
				return @result
			end
		end
	end
end