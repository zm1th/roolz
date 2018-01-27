
describe "Rool::All" do
  describe '#process' do
    it 'returns true if all the children rules are true for the dataset' do
      expect(Rool::All.new(Rool::True.new, Rool::True.new).process).to be(true)
    end
    it 'returns false if any of the children rules are false for the dataset' do
      expect(Rool::All.new(Rool::False.new, Rool::True.new).process).to be(false)
    end
    it "returns an array of messages when rules fail." do
    	blank = Rool::Blank.new
  		email = Rool::Email.new(:email, "shiny.com")
  		equal = Rool::Equal.new(:foo, 20)
  		greater_than = Rool::GreaterThan.new(:foo, 1)
  		include_rool = Rool::Include.new(:foo, [1,true,"bar",6,8, :foobar])
  		less_than = Rool::LessThan.new(:foo, -30)
  		regex = Rool::Regex.new(:name, /Arnold\s?Schwarzenegger/i)
  		subset = Rool::Subset.new(:foo, [1,2,3,4,5,6,7])

  		container = Rool::All.new(blank, email, equal, greater_than, include_rool, less_than, regex, subset)

  		#ALL of these should fail
  		blank.process('There is data here')
  		email.process
  		equal.process({foo: 30})
  		greater_than.process({foo: 5})
  		include_rool.process(21)
  		less_than.process({foo: 5})
  		regex.process(email: 'nate@chargeback.com')
  		subset.process([2,8,9])

    	expect(container.message).equal? be an_instance_of(Array)
    end

    it "returns an array of messages when rules fail." do
    	blank = Rool::Blank.new
  		email = Rool::Email.new(:email, "shiny.com")
  		equal = Rool::Equal.new(:foo, 20)
  		greater_than = Rool::GreaterThan.new(:foo, 1)
  		include_rool = Rool::Include.new(:foo, [1,true,"bar",6,8, :foobar])
  		less_than = Rool::LessThan.new(:foo, -30)
  		regex = Rool::Regex.new(:name, /Arnold\s?Schwarzenegger/i)
  		subset = Rool::Subset.new(:foo, [1,2,3,4,5,6,7])

  		container = Rool::All.new(blank, email, equal, greater_than, include_rool, less_than, regex, subset)

  		blank.process('There is data here')
  		email.process
  		equal.process({foo: 20}) #this one should succeed, message should be nil
  		greater_than.process({foo: 5})
  		include_rool.process(1) #this one should succeed, message should be nil
  		less_than.process({foo: 5})
  		regex.process(email: 'nate@chargeback.com')
  		subset.process([2,8,9])

    	expect(container.message).not_to include(nil)
    end

    it "returns a json object" do
    	blank = Rool::Blank.new
  		email = Rool::Email.new(:email, "shiny.com")
  		equal = Rool::Equal.new(:foo, 20)

  		container = Rool::All.new(blank, email, equal)

  		blank.process('There is data here')
  		email.process
  		equal.process({foo: 30})

  		expect(container.to_json).to include_json(
  				class: 'Rool::All',
  				children: [{
  					class: 'Rool::Blank',
  					data_key: nil,
  					operand: nil,
  					result: false,
  					message: 'Data has been found.'
  				},
  				{ class: 'Rool::Email',
  					data_key: 'email',
  					operand: 'shiny.com',
  					result: false,
  					message: 'Not a valid email.'
  				},
  				{class: 'Rool::Equal',
  					data_key: 'foo',
  					operand: 20,
  					result: false,
  					message: 'Value is not equal to dataset'
  				}])
    end


  end
end