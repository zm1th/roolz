module Rool
  class Regex < Basic
  	def process(data)
  		!!(data[:email] =~ @operand) 
  	end
  end
end
