module Rool
  class Equal < Basic
  	def process(data)
  		@result = data[:foo] == @operand
  		if @result == false
  			return @message = "Value is not equal to dataset"
  		else
	  		return @result
	  	end
  	end
  end
end
