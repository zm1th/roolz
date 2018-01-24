module Rool
  class Not < Container
  	def initialize(children_rules)
  		super
  	end
  	def process
  		@children.all?{|r| r.process}
  	end
  end
end
