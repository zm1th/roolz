module Rool
  class Equal < Basic
  	def process(data)
  		data[:foo] == @operand
  	end
  end
end
