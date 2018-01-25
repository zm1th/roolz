module Rool
  class Email < Basic
  	def is_email?
  		super
  		@result = !!(@operand =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  		if @result == false
  			@message = "Not a valid email."
  		end
  		return @result
  	end
  end
end
