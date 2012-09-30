require 'spec_helper'

describe "#sequential" do
  include FactoryGirl::Syntax::Methods

  context 'passing string with #N' do
    it "generates string increasing #N sequentialy" do
      sequential("nickname#N@email.com").should == "nickname1@email.com"
      sequential("nickname#N@email.com").should == "nickname2@email.com"
      sequential("nickname#N@email.com").should == "nickname3@email.com"
    end
  end

  context 'passing string without #N' do
    it "puts #N in string end" do
      sequential("nickname").should == "nickname1"
      sequential("nickname").should == "nickname2"
      sequential("nickname").should == "nickname3"
    end
  end
end
