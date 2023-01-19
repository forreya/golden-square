
require "diary_page"

describe DiaryPage do
  it "initializes diary page, calls count_words method, returns number of words in contents" do
    diary_page = DiaryPage.new("my morning", "drank tea")
    result = diary_page.count_words
    expect(result).to eq 2
  end

  it "initializes diary page, calls reading_time method, returns time needed to read page" do
    diary_page = DiaryPage.new("my morning", "drank tea")
    result = diary_page.reading_time(1)
    expect(result).to eq 2
  end

  context "input title string and a 2900-word string, then calls reading_chunk method with an wpm of 400 and minutes of 20" do
    it "returns hello 2900 times" do
      diary_page = DiaryPage.new('my_journal','hello ' * 2900)
      result = diary_page.reading_chunk(400,20)
      expect(result).to eq(('hello ' * 2900).strip)
    end
  end
end
