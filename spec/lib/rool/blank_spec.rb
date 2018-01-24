
describe "Rool::Blank" do
	describe '#process' do

		it "returns true if data is nil" do
			expect(Rool::Blank.new.process(nil)).to eq(true)
		end
		it "returns true if hash is empty" do
			expect(Rool::Blank.new.process({})).to eq(true)
		end
		it "returns true if array is empty" do
			expect(Rool::Blank.new.process([])).to eq(true)
		end
		it "returns true if string is empty" do
			expect(Rool::Blank.new.process('')).to eq(true)
		end
		
	end
	
end