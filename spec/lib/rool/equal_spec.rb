
describe "Rool::Equal" do
	describe "#process" do

		before :each do
			@data = {foo: 30}
		end

		it "returns true if the value passed is equal to the value in the data set " do
			expect(Rool::Equal.new(:foo, 30).process(@data)).to eq(true)
		end

		it "returns false if the value passed is equal to the value in the data set " do
			expect(Rool::Equal.new(:foo, 20).process(@data)).to eq(false)
		end
		
	end
	
end