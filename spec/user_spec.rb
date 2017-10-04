require 'spec_helper'

describe User do
  describe "validations" do
    it "should require a login" do
      User.new().should_not be_valid
      User.new(:login => '').should_not be_valid
      User.new(:login => "Wlojtek").should be_valid
    end
  end
end
