
require 'present'

RSpec.describe Present do
  context "when there are no contents in the present" do
    it "calls the unwrap method and tells the user there are no contents to unwrap" do
      present = Present.new()
      expect{ present.unwrap() }.to raise_error "There are no contents to unwrap."
    end
  end

  context "when there are contents in the present" do
    it "wrap method called once, then wrap method called again, user then told that the present has already been wrapped" do
      present = Present.new()
      present.wrap('boots')
      expect{ present.wrap('more boots') }.to raise_error "The presents have already been wrapped."
    end

    it "wrap method called once, then unwrap method called, returning the contents" do
      present = Present.new()
      present.wrap('frogs')
      result = present.unwrap()
      expect(result).to eq 'frogs'
    end
  end
end