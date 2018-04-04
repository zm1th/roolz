module Rool
  class Email < Basic
  	def process(dataset = {})
  		@result = !!(@operand =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  		if @result == false
  			@message = "Not a valid email."
  		else
	  		return @result
        
	  	end
  	end
  end
end



