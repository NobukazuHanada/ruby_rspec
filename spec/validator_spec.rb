require "spec_helper"

describe "validator" do
  it{ validation("").should be_false }
  it{ validation("000").should be_true }
end
