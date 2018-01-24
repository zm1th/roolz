
describe "Rool::subset" do
	describe '#process' do

		it "returns true if operand is a complete subset of the dataset's data_key" do
			expect(Rool::Subset.new(:data_key, [1,2,3,4]).process([1,2,3])).to eq(true)
		end
		it "returns false if operand is not a complete subset of the dataset's data_key" do
			expect(Rool::Subset.new(:data_key, [1,2,3,4,5,6,7]).process([2,8,9])).to eq(false)
		end
		
	end
	
end