module Rool
  class Email < Basic
  	#I was debating between making a whole new class, or just a child of the basic class. I figured if I made a child, I'd be able to use the @operand.
  	def is_email?
  		#thank you Michael Hartl
  		!!(@operand =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  	end
  end
end
