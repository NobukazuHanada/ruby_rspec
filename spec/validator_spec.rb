# -*- encoding: utf-8 -*-

require "spec_helper"

describe "validator" do
  shared_examples_for :validation_true do |zip_codes|
    zip_codes.each{|zip_code| it{ validation(zip_code).should be_true} }
  end  

  shared_examples_for :validation_false do |zip_codes|
    zip_codes.each{|zip_code| it{ validation(zip_code).should be_false} }
  end
  
  describe "other string" do 
    it_should_behave_like :validation_false, ["","1111","77777","777778888888"]
  end

  describe "3 strings" do
    it_should_behave_like :validation_true, ["000","111"]
    it_should_behave_like :validation_false, ["aaa"]
  end
  
  describe "7 strings" do
    it_should_behave_like :validation_true, ["1111111"]
  end
  
  describe "ハイフンをチェックする" do
    it_should_behave_like :validation_true, ["111-1111"]
  end
end

