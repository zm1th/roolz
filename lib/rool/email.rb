module Rool
  class Email < Basic
  	def is_email?
  		#thank you Michael Hartl
  		!!(@operand =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  	end
  end
end
