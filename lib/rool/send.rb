class Rool::Send

	attr_accessor :rool_type, :method, :operand, :data_key
	def initialize(rool_type, method, operand)
		@rool_type = rool_type
		@method = method
		@operand = operand
		@data_key = nil
	end

	def set_rule(dataset={})
		if dataset.class == Hash && !dataset.empty?
			@data_key = dataset.reduce[0]
		end
		Object.const_get("Rool::#{@rool_type.split('_').map(&:capitalize)*''}").new(@data_key, @operand)
	end

	def process(dataset={})
		self.set_rule(dataset).send(@method.to_sym, dataset)
	end


end