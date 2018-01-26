
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
		it "returns message if string is not empty" do
			expect(Rool::Blank.new.process('There is data here')).to eq('Data has been found.')
		end
		it "returns message if hash is not empty" do
			expect(Rool::Blank.new.process({foo: 123})).to eq('Data has been found.')
		end
		it "returns message if there is data" do
			expect(Rool::Blank.new.process(2)).to eq('Data has been found.')
		end
		it "returns message if there is data" do
			expect(Rool::Blank.new.process(:foo)).to eq('Data has been found.')
		end

		
	end
	
end