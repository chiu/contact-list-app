require 'spec_helper'

describe Contact do


  before :each do
    @contact = Contact.new 4, "John Smith", "johnsmith@gmail.com"
  end


  describe "#new" do
    it "takes three parameters and returns a contact object" do
      @contact.should be_an_instance_of Contact
    end
  end

  describe "#user_id" do
    it "returns the correct user_id" do
      @contact.contact_id.should eql 4
    end
  end
  describe "#name" do
    it "returns the correct name" do
      @contact.name.should eql "John Smith"
    end
  end
  describe "#email" do
    it "returns the correct email" do
      @contact.email.should eql "johnsmith@gmail.com"
    end
  end


end