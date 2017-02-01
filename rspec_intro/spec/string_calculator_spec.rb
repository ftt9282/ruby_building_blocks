require "spec_helper"
require "rspec_intro"

describe StringCalculator do
  describe "add" do
    it "returns 0 when given an empty string" do
      expect(StringCalculator.add("")).to eq 0
    end

    it "returns the number when given only one input" do
      expect(StringCalculator.add(2)).to eq 2
      expect(StringCalculator.add(-1)).to eq -1
    end

    it "adds two numbers" do
      expect(StringCalculator.add(4,5)).to eq 9
      expect(StringCalculator.add(-2,3)).to eq 1
    end
  end
end