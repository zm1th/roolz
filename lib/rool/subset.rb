module Rool
	class Subset < Basic
		def process(data)
			@result = (@operand & data ) == data
			if @result == false
				@message = "The provided array is not a subset of dataset array"
			end
			return @result
		end
	end
end