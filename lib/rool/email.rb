module Rool
  class Email < Basic
  	def is_email?
  		#thank you Michael Hartl
  		#I wasn't sure if this is what you meant by a failed rule. In this particular rule, I set it so that if the operand being passed through is not a valid email, then a message is set.
  		@result = !!(@operand =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  		if @result == false
  			@message = "Not a valid email."
  		end
  		return @result
  	end
  end
end
