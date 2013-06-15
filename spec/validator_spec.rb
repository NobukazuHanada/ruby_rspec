require "spec_helper"

describe "validator" do
  describe "0 string" do 
    it{ validation("").should be_false }
  end

  describe "3 strings" do
    it{ ["000","111"].each{|zip_code| validation(zip_code).should be_true} }
    it{ ["aaa"].each{|zip_code| validation(zip_code).should be_false} }
  end
end
