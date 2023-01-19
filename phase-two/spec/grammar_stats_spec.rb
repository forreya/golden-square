
require 'grammar_stats'

describe GrammarStats do
  context "initialize grammar stats object, then call check method (passing in an empty string)" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("")
      expect(result).to eq false
    end
  end

  context "initialize grammar stats object, then call check method (passing in a capitalized sentence but doesn't have a suitable sentence-ending punctuation mark)" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("Hello there")
      expect(result).to eq false
    end
  end

  context "initialize grammar stats object, then call check method (passing in a sentence that has a suitable sentence-ending punctuation mark but isn't capitalized)" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("hello there.")
      expect(result).to eq false
    end
  end

  context "initialize grammar stats object, then call check method (passing in a sentence that isn't a capitalized AND doesn't have a suitable sentence-ending punctuation mark)" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("hello there")
      expect(result).to eq false
    end
  end
  
  context "initialize grammar stats object, then call check method (passing in a sentence a singular question mark)" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("?")
      expect(result).to eq false
    end
  end
  
  context "initialize grammar stats object, then call check method (passing in a capitalized sentence that also has a suitable sentence-ending punctuation mark)" do
    it "returns true" do
      grammar_stats = GrammarStats.new
      result = grammar_stats.check("Hello there.")
      expect(result).to eq true
    end
  end

  context "initialize grammar stats object, then call check method (passing in correct sentence), then call percentage_good method" do
    it "returns 100" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello there.")
      result = grammar_stats.percentage_good()
      expect(result).to eq 100
    end
  end

  context "initialize grammar stats object, then call check method 2 times, then call percentage_good method" do
    it "returns 50" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello there.")
      grammar_stats.check("Hello there")
      result = grammar_stats.percentage_good()
      expect(result).to eq 50
    end
  end

  context "initialize grammar stats object, then call check method 3 times, then call percentage_good method" do
    it "returns 33" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello there.")
      grammar_stats.check("Hello there")
      grammar_stats.check("@928")
      result = grammar_stats.percentage_good()
      expect(result).to eq 33
    end
  end

  context "initialize grammar stats object, then call check method 4 times, then call percentage_good method" do
    it "returns 25" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Hello there.")
      grammar_stats.check("Hello there")
      grammar_stats.check("@928")
      grammar_stats.check("")
      result = grammar_stats.percentage_good()
      expect(result).to eq 25
    end
  end
end