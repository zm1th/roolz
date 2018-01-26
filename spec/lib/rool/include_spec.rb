
describe "Rool::Include" do
	describe "#process" do
		before :each do
			@data = [1,true,"bar",6,8, :foobar]
		end
		
		it "returns true if element is included in dataset array" do
			expect(Rool::Include.new(:foo, @data).process(:foobar)).to eq(true)
		end

		it "returns message if element is not included in dataset array" do
			expect(Rool::Include.new(:foo, @data).process(21)).to eq("That element is not included in the dataset")
		end

	end
	
end