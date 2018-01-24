module Rool
	class Blank < Basic
		def process(data)
			#I orignally tried to use .blank? but realized it's only a rails function. This way it checks it twice. I would prefer something a bit dryer.
			data.nil? || data.empty?
		end
	end
end