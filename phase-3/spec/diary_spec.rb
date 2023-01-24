
require "diary"

describe Diary do
  it "creates and reads a diary" do
    diary = Diary.new("contents")
    expect(diary.read).to eq "contents"
  end
end