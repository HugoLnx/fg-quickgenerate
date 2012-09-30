require 'spec_helper'

describe "#quickgenerate" do
  include FactoryGirl::Syntax::Methods

  context 'passing string with #N' do
    it "generates string increasing #N sequentialy" do
      quickgenerate("nickname#N@email.com").should == "nickname1@email.com"
      quickgenerate("nickname#N@email.com").should == "nickname2@email.com"
      quickgenerate("nickname#N@email.com").should == "nickname3@email.com"
    end
  end

  context 'passing string without #N' do
    it "puts #N in string end" do
      quickgenerate("nickname").should == "nickname1"
      quickgenerate("nickname").should == "nickname2"
      quickgenerate("nickname").should == "nickname3"
    end
  end
end
