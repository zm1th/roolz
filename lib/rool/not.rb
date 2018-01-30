module Rool
  class Not < Container
  	def initialize(children_rules)
  		super
  		# by creating a new initialize and just taking the * out (which allows for multiple arguments to be included), it will naturally return an ArgumentError that will tell them they've given too many arguments
  	end
  	def process
  		@result = @children.all?{|r| r.process}
  		return @result
  	end
  end
end
