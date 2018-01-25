module Rool
  class Any < Container
  	def process(dataset={})
  		@result = @children.any?{|r| r.process(dataset)}
  		return @result
  	end
  end
end

