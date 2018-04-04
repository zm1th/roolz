
describe "Rool::subset" do
	describe '#process' do

		it "returns true if operand is a complete subset of the dataset's data_key" do
			expect(Rool::Subset.new(:foo, [1,2,3,4]).process([1,2,3])).to eq(true)
		end
		it "returns message if operand is not a complete subset of the dataset's data_key" do
			expect(Rool::Subset.new(:foo, [1,2,3,4,5,6,7]).process([2,8,9])).to eq("The provided array is not a subset of dataset array")
		end
		
	end
	
end