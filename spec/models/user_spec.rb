require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "Jayachandran",
      :email => "jai@gmail.com"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end

  it "should require a name" do
  	no_name_user = User.new(:name => "",:email => "j@gmail.com")
    no_name_user.should_not be_valid
  end

   it "should require an email address" do
    no_email_user = User.new(:name => "jai",:email => "")
	no_email_user.should_not be_valid
   end
end
