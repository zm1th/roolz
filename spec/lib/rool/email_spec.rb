
describe "Rool::Email" do
	describe '#is_email?' do
		it "returns true if the data passed through is an email" do
			expect(Rool::Email.new(:email, "nate@chargeback.com").is_email?).to eq(true)
		end
		it "returns true if the data passed through is an email" do
			expect(Rool::Email.new(:email, "nate_smith@chargeback.com").is_email?).to eq(true)
		end
		it "returns message if the data passed through is an invalid email" do
			expect(Rool::Email.new(:email, "The Dude@Abides..com").is_email?).to eq("Not a valid email.") 
		end
		it "returns message if the data passed through is an invalid email" do
			expect(Rool::Email.new(:email, "shiny.com").is_email?).to eq("Not a valid email.") 
		end
	end

end