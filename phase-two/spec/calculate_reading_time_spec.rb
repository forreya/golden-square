
require 'calculate_reading_time'

RSpec.describe "calculate_reading_time method" do
  context "receives an empty string" do
    it "returns 1" do
      reading_time = calculate_reading_time('')
      expect(reading_time).to eq 1
    end
  end

  context "receives a 1 word string" do
    it "returns 1" do
      reading_time = calculate_reading_time('tasukete')
      expect(reading_time).to eq 1
    end
  end

  context "receives a 200 word string" do
    it "returns 1" do
      reading_time = calculate_reading_time("hello " * 200)
      expect(reading_time).to eq 1
    end
  end

  context "receives a 300 word string" do
    it "returns 2" do
      reading_time = calculate_reading_time("hello " * 300)
      expect(reading_time).to eq 2
    end
  end

  context "receives a 400 word string" do
    it "returns 2" do
      reading_time = calculate_reading_time("hello " * 400)
      expect(reading_time).to eq 2
    end
  end

  context "receives a 500 word string" do
    it "returns 3" do
      reading_time = calculate_reading_time("hello " * 500)
      expect(reading_time).to eq 3
    end
  end

  context "receives a 5000 word string" do
    it "returns 25" do
      reading_time = calculate_reading_time("hello " * 5000)
      expect(reading_time).to eq 25
    end
  end
end