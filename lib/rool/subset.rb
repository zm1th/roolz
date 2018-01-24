module Rool
	class Subset < Basic
		def process(data)
			(@operand & data ) == data
		end
	end
end