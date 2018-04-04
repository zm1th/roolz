
describe "Rool::Basic" do
	describe "#to_json" do
		it "returns a json string" do
			expect(Rool::Basic.new(:foo, 'bar').to_json).to include_json(
				class: "Rool::Basic",
				data_key: "foo",
				operand: "bar")
		end
	end
	describe "#from_json" do
		it "returns an object from json string" do
			subject = Rool::Basic.new(:foo, 'bar')
			expect(subject.from_json(subject.to_json)).to be_a Rool::Basic
		end
	end



end