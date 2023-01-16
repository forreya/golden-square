require 'gratitudes'

RSpec.describe Gratitudes do
    it "Initialises an empty Gratitudes object and returns an uninterpolated format method" do
        good_things = Gratitudes.new
        results = good_things.format
        expect(results).to eq "Be grateful for: "
    end

    it "Returns the format method with one added string" do
      good_things = Gratitudes.new
      string = good_things.add("dogs")
      results = good_things.format
      expect(results).to eq "Be grateful for: dogs"
  end

  it "Returns the format method with three added strings" do
      good_things = Gratitudes.new
      good_things.add("dogs")
      good_things.add("cats")
      good_things.add("books")
      results = good_things.format
      expect(results).to eq "Be grateful for: dogs, cats, books"
  end

  end