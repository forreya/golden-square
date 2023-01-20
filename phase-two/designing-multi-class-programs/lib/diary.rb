class Diary
    def initialize
        @entries_list = []
    end

    def add(entry)
        @entries_list.push(entry)
    end

    def all_titles
        if @entries_list.empty?
            return 'You have no entries currently.'
        else
            return @entries_list
        end
    end

    def read_entry(title)
        @entries_list.each do |entry|
            if entry.title == title
                return entry.contents
            end
        end
        fail 'This entry does not exist.'
    end

    def find_best_entry(wpm, minutes)
        max_words = wpm * minutes
        eligible = []
        @entries_list.each {
            |entry|
            if entry.count_words > max_words
                next
            else
                eligible.push(entry)
            end
        }
        eligible.sort_by{
            |entry|
            entry.count_words
        }[-1]
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
        # Returns an instance of diary entry representing the entry that is closest 
        # to, but not over, the length that the user could read in the minutes they
        # have available given their reading speed.
    end

    def show_all_numbers
        all_numbers = []
        @entries_list.each {
            |entry|
            all_numbers.push(entry.show_numbers)
        }
        all_number
    end
    
end