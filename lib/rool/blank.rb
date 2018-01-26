module Rool
	class Blank < Basic
		def process(data)
			#I really feel like there's a dryer way to do this.
			if data.class == Integer || data.class == NilClass
				@result = data.nil?
			else
				@result = data.empty?
			end

			if @result == false
				return @message = 'Data has been found.'
			else
				return @result
			end
		end
	end
end
