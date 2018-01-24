module Rool
  class Blank < Basic
  	def process(dataset)
  		super

  		# Optional method to return blank if value is nothing but white space
  		if dataset[@data_key].is_a?(String)
  			if dataset[@data_key].strip == ''
  				return true
  			end
  		end

  		if dataset[@data_key].nil? || dataset[@data_key].empty?
  			return true
  		end
  		false
		end
  end
end