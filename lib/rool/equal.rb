module Rool
  class Equal < Basic
  	def process(data)
  		if data[@data_key] == @operand
        return @result = true
      else
        @result = false
        return @message = "Value is not equal to dataset"
	  	end
  	end
  end
end
