describe "Rool::Send" do
	describe "#set_rule" do
		it "will create a rule that has been given" do
			expect(Rool::Send.new("greater_than", nil, 10).set_rule).equal? be an_instance_of(Rool::GreaterThan)
		end
	end
	describe "#process" do
		it "it will create an email rule and call the passed in method on that object to return true" do
			expect(Rool::Send.new("email", "process", "thedude@gmail.com").process).to eq(true)
		end
		it "it will create an email rule and call the passed in method on that object to return a message" do
			expect(Rool::Send.new("email", "process", "thedude.com").process).to eq("Not a valid email.")
		end
		it "it will create a GreaterThan rule and call the passed in method on that object to return true" do
			expect(Rool::Send.new("greater_than", "process", 10).process({foo: 5})).to eq(true)
		end
		it "it will create a GreaterThan rule and call the passed in method on that object to return a message" do
			expect(Rool::Send.new("greater_than", "process", 3).process({foo: 5})).to eq("operand is less than than value in data set")
		end
		it "it will create a blank rule and call the passed method on that object to return true" do
			expect(Rool::Send.new("blank", "process", nil).process({})).to eq(true)
		end
		it "it will create a blank rule and call the passed method on that object to return a message" do
			expect(Rool::Send.new("blank", "process", nil).process("there is data here")).to eq('Data has been found.')
		end
	end
end