# -*- encoding: utf-8 -*-

require "spec_helper"

describe "validator" do
  describe "other string" do 
    it{ validation("").should be_false }
    it{ validation("1111").should be_false } # 異常系
    it{ validation("77777").should be_false } # 異常系
    it{ validation("777788888888888").should be_false } # 異常系
  end

  describe "3 strings" do
    ["000","111"].each{|zip_code| it{ validation(zip_code).should be_true } } 
    ["aaa"].each{|zip_code| it{ validation(zip_code).should be_false } } 
  end
  
  describe "7 strings" do
    it{ validation("1111111").should be_true }
  end
  
  describe "ハイフンをチェックする" do
    it{ validation("111-1111").should be_true }
  end
end
