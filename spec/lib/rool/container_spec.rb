
describe "Rool::Container" do
	describe "#to_json" do
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
   describe "#from_json" do
    it "returns an object from a json string" do
    	#first create the json string. If there is an easier way to do this, I would LOVE to know.
    	blank = Rool::Blank.new
  		email = Rool::Email.new(:email, "shiny.com")
  		equal = Rool::Equal.new(:foo, 20)

  		container = Rool::All.new(blank, email, equal)

  		json_string = container.to_json

  		expect(container.from_json(json_string)).to be_a Rool::Container
    end
   end
end