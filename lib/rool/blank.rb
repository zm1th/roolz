module Rool
	class Blank < Basic
		def process(data)
			super
			@result = data.nil? || data.empty?
			if @result == false
				@message = 'Data has been found.'
			end
			return @result
		end
	end
end