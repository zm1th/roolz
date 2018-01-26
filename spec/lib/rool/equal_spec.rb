
describe "Rool::Equal" do
	describe "#process" do

		before :each do
			@data = {foo: 30}
		end

		it "returns true if the value passed is equal to the value in the data set " do
			expect(Rool::Equal.new(:foo, 30).process(@data)).to eq(true)
		end

		it "returns messag if the value passed is equal to the value in the data set " do
			expect(Rool::Equal.new(:foo, 20).process(@data)).to eq("Value is not equal to dataset")
		end
		
	end
	
end