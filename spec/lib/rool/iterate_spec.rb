describe "Rool::Iterate" do
	describe "#process" do
		it "creates a rule" do
			p Rool::Iterate.new('less_than', 'all', 12).process([{foo: 5}, {foo: 12}, {foo: 30}])
		end
		
	end
	
end