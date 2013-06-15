require "spec_helper"

describe "validator" do
  describe "0 string" do 
    it{ validation("").should be_false }
  end

  describe "3 strings" do
    ["000","111"].each{|zip_code| it{ validation(zip_code).should be_true } } 
    ["aaa"].each{|zip_code| it{ validation(zip_code).should be_false } } 
  end
  
  describe "7 strings" do
    it{ validation("1111111").should be_true }
  end
end
