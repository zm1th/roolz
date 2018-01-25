module Rool
  class Include < Basic
  	def process(data)
			@result = @operand.include?(data)	
			if @result == false
				@message = "That element is not included in the dataset"
			end
			return @result
  	end
  end
end
