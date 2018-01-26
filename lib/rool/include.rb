module Rool
  class Include < Basic
  	def process(data)
			@result = @operand&.include?(data)	
			if @result == false
				return @message = "That element is not included in the dataset"
			else
				return @result
			end
  	end
  end
end
