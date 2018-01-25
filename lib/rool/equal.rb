module Rool
  class Equal < Basic
  	def process(data)
  		super
  		@result = data[:foo] == @operand
  		if @result == false
  			@message = "Value is not equal to dataset"
  		end
  		return @result
  	end
  end
end
