
require 'sentence_checker'

RSpec.describe "sentence_checker method" do
  context "sentence is an empty string" do
    it "returns false" do
      result = sentence_checker("")
      expect(result).to eq false
    end
  end

  context "sentence is a capitalized sentence but doesn't have a suitable sentence-ending punctuation mark" do
    it "returns false" do
      result = sentence_checker("Hello there")
      expect(result).to eq false
    end
  end

  context "sentence has a suitable sentence-ending punctuation mark but isn't capitalized" do
    it "returns false" do
      result = sentence_checker("hello there.")
      expect(result).to eq false
    end
  end

  context "sentence isn't a capitalized AND doesn't have a suitable sentence-ending punctuation mark" do
    it "returns false" do
      result = sentence_checker("hello there")
      expect(result).to eq false
    end
  end

  context "sentence is a singular question mark" do
    it "returns false" do
      result = sentence_checker("?")
      expect(result).to eq false
    end
  end

  context "sentence is a capitalized sentence AND has a suitable sentence-ending punctuation mark" do
    it "returns true" do
      result = sentence_checker("Hello there.")
      expect(result).to eq true
    end
  end
end