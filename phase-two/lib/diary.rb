
class Diary
  def initialize
    @all_pages = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @all_pages.push(entry)
  end

  def all
    @all_pages
  end

  def count_words
    sum = 0
    @all_pages.each {
      |page|
      sum += page.count_words
    }
    sum
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryPage.
  end

  def reading_time(wpm) 
    @all_pages.reduce(0) {
      |sum, page|
      sum += page.reading_time(wpm)
    }
    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
      max_words = wpm * minutes
      eligible = []
      @all_pages.each {
        |page|
        if page.count_words > max_words
          next
        else
          eligible.push(page)
        end
      }
      eligible.sort_by{
        |page|
        page.count_words
      }[-1]
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end
