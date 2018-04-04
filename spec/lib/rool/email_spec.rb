
describe "Rool::Email" do
	describe '#process' do
		it "returns true if the data passed through is an email" do
			expect(Rool::Email.new(:email, "nate@chargeback.com").process).to eq(true)
		end
		it "returns true if the data passed through is an email" do
			expect(Rool::Email.new(:email, "nate_smith@chargeback.com").process).to eq(true)
		end
		it "returns message if the data passed through is an invalid email" do
			expect(Rool::Email.new(:email, "The Dude@Abides..com").process).to eq("Not a valid email.") 
		end
		it "returns message if the data passed through is an invalid email" do
			expect(Rool::Email.new(:email, "shiny.com").process).to eq("Not a valid email.") 
		end
	end

end