describe "Rool::Send" do
	describe "#process" do
		it "it will create an email rule and call the passed in method on that object to return true" do
			expect(Rool::Send.new("email", "process", "thedude@gmail.com").process).to eq(true)
		end
		it "it will create an email rule and call the passed in method on that object to return a message" do
			expect(Rool::Send.new("email", "process", "thedude.com").process).to eq("Not a valid email.")
		end
		it "it will create a GreaterThan rule and call the passed in method on that object to return true" do
			expect(Rool::Send.new("greater than", "process", 10).process({foo: 5})).to eq(true)
		end
		it "it will create a GreaterThan rule and call the passed in method on that object to return a message" do
			expect(Rool::Send.new("greater than", "process", 3).process({foo: 5})).to eq("operand is less than than value in data set")
		end
		
	end
end