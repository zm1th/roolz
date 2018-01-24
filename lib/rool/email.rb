module Rool
  class Email < Basic
  	def process(dataset)
  		super
  		email = dataset[@data_key]
		  valid = '[A-Za-z\d.+-]+' #Commonly encountered email address characters
		  (email =~ /#{valid}@#{valid}\.#{valid}/) == 0
		end
  end
end