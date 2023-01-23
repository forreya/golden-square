
class DiaryPage
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    if @contents.split(" ").length == 0
      return 0
    elsif @contents.split(" ").length % wpm == 0
      time_calculation = ( (@contents.split(" ").length / wpm)).floor
    else
      time_calculation = ( (@contents.split(" ").length / wpm) + 1).floor
    end
    time_calculation
    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) 
    seconds = minutes
    words = wpm * minutes
    if words >= @contents.split(' ').length
      @contents.strip
    else
      @contents.split(" ")[0..words-1].join(" ").strip
    end
    
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end