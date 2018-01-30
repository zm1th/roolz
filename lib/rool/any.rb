module Rool
  class Any < Container
  	def process(dataset={})
  		return @result = @children.any?{|r| r.process(dataset)}
  	end
  end
end

