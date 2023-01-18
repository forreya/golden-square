
require 'diary_entry'

describe DiaryEntry do
  context "input empty title string and empty contents string, then calls title method" do
    it "returns empty string" do
      diary_entry = DiaryEntry.new('','')
      result = diary_entry.title()
      expect(result).to eq ""
    end
  end

  context "input empty title string and empty contents string, then calls contents method" do
    it "returns empty string" do
      diary_entry = DiaryEntry.new('','')
      result = diary_entry.contents()
      expect(result).to eq ""
    end
  end

  context "input empty title string and empty contents string, then calls count_words method" do
    it "returns 0" do
      diary_entry = DiaryEntry.new('','')
      result = diary_entry.count_words()
      expect(result).to eq 0
    end
  end

  context "input empty title string and a 1-word string, then calls count_words method" do
    it "returns 1" do
      diary_entry = DiaryEntry.new('','hello')
      result = diary_entry.count_words()
      expect(result).to eq 1
    end
  end

  context "input empty title string and a 3-word string, then calls count_words method" do
    it "returns 3" do
      diary_entry = DiaryEntry.new('','nomimono o arigatou')
      result = diary_entry.count_words()
      expect(result).to eq 3
    end
  end

  context "input empty title string and an empty string, then calls reading_time method with an wpm of 200" do
    it "returns 0" do
      diary_entry = DiaryEntry.new('','')
      result = diary_entry.reading_time(200)
      expect(result).to eq 0
    end
  end

  context "input empty title string and a 200-word string, then calls reading_time method with an wpm of 200" do
    it "returns 1" do
      diary_entry = DiaryEntry.new('','hello ' * 200)
      result = diary_entry.reading_time(200)
      expect(result).to eq 1
    end
  end

  context "input empty title string and a 500-word string, then calls reading_time method with an wpm of 20" do
    it "returns 25" do
      diary_entry = DiaryEntry.new('','hello ' * 500)
      result = diary_entry.reading_time(20)
      expect(result).to eq 25
    end
  end

  context "input empty title string and a 3900-word string, then calls reading_time method with an wpm of 210" do
    it "returns 19" do
      diary_entry = DiaryEntry.new('','hello ' * 3900)
      result = diary_entry.reading_time(210)
      expect(result).to eq 19
    end
  end

  context "input title string and a 10-word string, then calls reading_chunk method with an wpm of 1 and minutes of 1" do
    it "returns hello" do
      diary_entry = DiaryEntry.new('my_journal','hello ' * 10)
      result = diary_entry.reading_chunk(1,1)
      expect(result).to eq 'hello'
    end
  end

  context "input title string and a 10-word string, then calls reading_chunk method with an wpm of 5 and minutes of 1" do
    it "returns hello hello hello hello hello" do
      diary_entry = DiaryEntry.new('my_journal','hello ' * 10)
      result = diary_entry.reading_chunk(5,1)
      expect(result).to eq 'hello hello hello hello hello'
    end
  end

  context "input title string and a 2900-word string, then calls reading_chunk method with an wpm of 37 and minutes of 20" do
    it "returns hello 740 times" do
      diary_entry = DiaryEntry.new('my_journal','hello ' * 2900)
      result = diary_entry.reading_chunk(37,20)
      expect(result).to eq(('hello ' * 740).strip)
    end
  end

  context "input title string and a 2900-word string, then calls reading_chunk method with an wpm of 400 and minutes of 20" do
    it "returns hello 2900 times" do
      diary_entry = DiaryEntry.new('my_journal','hello ' * 2900)
      result = diary_entry.reading_chunk(400,20)
      expect(result).to eq(('hello ' * 2900).strip)
    end
  end
end