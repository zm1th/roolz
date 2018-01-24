class Rool::Blank
	#this time I went and made a whole new class, cause there wasn't variables being passed in that would need to be stored in the class.
	def process(data)
		#I orignally tried to use .blank? but realized it's only a rails function. This way it checks it twice. I would prefer something a bit dryer.
		data.nil? || data.empty?
	end
end