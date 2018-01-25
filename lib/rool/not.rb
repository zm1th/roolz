module Rool
  class Not < Container
  	def process
  		super
  		@children.all?{|r| r.process}
  	end
  end
end
