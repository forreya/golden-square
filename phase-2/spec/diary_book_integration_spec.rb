
require "diary"
require "diary_page"

describe "Diary integration" do
  it "initializes diary, adds one page, then return all pages" do
    diary = Diary.new()
    page1 = DiaryPage.new("my morning", "drank tea")
    diary.add(page1)
    result = diary.all
    expect(result).to eq [page1]
  end

  it "initializes diary & diary page, calls count_words method, returns sum of words from all pages" do
    diary = Diary.new()
    page1 = DiaryPage.new("my morning", "drank tea")
    page2 = DiaryPage.new("my night", "drank coffee")
    diary.add(page1)
    diary.add(page2)
    result = diary.count_words
    expect(result).to eq 4
  end

  it "initializes diary & diary page, calls reading_time method, returns total reading time integer for all pages" do
    diary = Diary.new()
    page1 = DiaryPage.new("my morning", "drank tea")
    page2 = DiaryPage.new("my night", "drank coffee")
    diary.add(page1)
    diary.add(page2)
    result = diary.reading_time(1)
    expect(result).to eq 4
  end

  it "calls find_best_entry_for_reading_time method, returns the longest entry the user can read in the given time" do
    diary = Diary.new()
    page1 = DiaryPage.new("my morning", "drank very delicious chai latte")
    page2 = DiaryPage.new("my night", "drank very very very very very nice very matcha latte")
    page3 = DiaryPage.new("my midnight", "drank")
    diary.add(page1)
    diary.add(page2)
    diary.add(page3)
    result = diary.find_best_entry_for_reading_time(6,1)
    expect(result).to eq page1
  end

  it "calls find_best_entry_for_reading_time method, returns the longest entry the user can read in the given time" do
    diary = Diary.new()
    page1 = DiaryPage.new("my morning", "drank very delicious chai latte")
    page2 = DiaryPage.new("my night", "drank very very very very very nice very matcha latte")
    page3 = DiaryPage.new("my midnight", "drank")
    page4 = DiaryPage.new("my evening", "drank " * 20)
    diary.add(page1)
    diary.add(page2)
    diary.add(page3)
    diary.add(page4)
    result = diary.find_best_entry_for_reading_time(20,1)
    expect(result).to eq page4
  end
end