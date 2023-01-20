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
end