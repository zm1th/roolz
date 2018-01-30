class Rool::Iterate

	attr_accessor :rule_type, :container_type, :operand, :data_key
	def initialize(rule_type, container_type, operand)
		@rule_type, @container_type, @operand, @data_key = rule_type, container_type, operand, nil
	end

	def process(dataset = {})
		#ok so this one is really hard. What I need to do is be able to take an array of data that needs to be processed by each rule. The data changes with each rule. But the operand stays the same.

		#the way the containers.process are set up, the dataset stays the same while the container loops through each child, which can change eacg time. so how do we change the dataset for every iteration? Can we?

		#ok so each rule has a result and message attribute. Can we process each one here?


			  # 	container = Object.const_get("Rool::#{@container_type.split('_').map(&:capitalize)*''}").new
					
					# dataset.each do |data|
					# 	if !data.empty?
					# 		@data_key = data.reduce[0]
					# 	end
					# 	rule = Rool::Send.new(@rule_type, nil, @operand).set_rule(data)
					# 	rule.process(data)
					# 	p container.children << rule
					# end
					# container.process()



		  #no we can't because once we run the container.process method the result will change.

		#is there a way to change the dataset? Maybe we could use block? and it will just be a loop?
			



				# if !dataset.empty?
				# 		@data_key = dataset.reduce[0]
				# 	end
				# 	rule = Rool::Send.new(@rule_type, nil, @operand).set_rule(data)

				# container = Object.const_get("Rool::#{@container_type.split('_').map(&:capitalize)*''}").new(rule*dataset.length)

				# container.process(dataset.each{|data| data})

			



			#i don't think it works that way, and I think in order to pass a block I would have to change the code in the container method.

		#is there a way to do this without changing the code in the container method?

		#ok so the one thing that changes every time is the operand. Maybe we have to iterate through the operand instead? no... cause some of the rules don't take operands, only the dataset.... 

		#the only thing I can think is that there must be some block method that will help, or I just HAVE to change the code for all of the containers..... maybe a nested loop.

		#nested loop doesn't seem to be a thing... BUT maybe I can change the structure of the child so that it's calling the right data into the process and ignores the .process that's being put on it in the method? But that seems like a hack. I feel like it would undermine the code in the rule. Which, maybe that's fine...

		#I think I just have to change the code in the method....... But it's midnight. And they're kicking me out of this cafe. I'm gonna have to call it. Boo.
	
	end

end