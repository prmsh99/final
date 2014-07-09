require 'spec_helper'
describe Contact do 
	it "has a valid factory" do
    create(:contact).should be_valid
  end
	it "is valid with a fristname,lastname and email" do
		contact=Contact.new(firstname: 'paramesh',lastname: 'anakapalli',email: 'prmsh99@gmail.com')
		expect(contact).to be_valid
	end


	it "is invalid without a firstname" do
		expect(Contact.new(firstname: nil)).to have(1).errors_on(:firstname)
	end


	it "is invalid without a lasttname" do
		expect(Contact.new(lastname:nil)).to have(1).errors_on(:lastname)
	end

	it "is invalid without a email" do
		Contact.create(firstname: 'paramesh',lastname: 'anakapalli',email: 'prmsh99@gmail.com')
		contact=Contact.new(firstname: 'sow',lastname: 'gottapu',email:'prmsh99@gmail.com')
		expect(contact).to have(1).errors_on(:email)
	end

	it "is invalid with a duplicate email address"
	it "returns contact fullname as a string"

end