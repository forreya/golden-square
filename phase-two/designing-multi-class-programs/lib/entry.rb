class Entry
    def initialize(title,contents)
        @title = title
        @contents = contents
    end

    def title
        @title
    end 

    def contents
        @contents
    end 

    def count_words
        @contents.split(" ").length
    end

    def show_numbers
        numbers = @contents.scan(/^(((\+44\s?\d{4}|\(?0\d{4}\)?)\s?\d{3}\s?\d{3})|((\+44\s?\d{3}|\(?0\d{3}\)?)\s?\d{3}\s?\d{4})|((\+44\s?\d{2}|\(?0\d{2}\)?)\s?\d{4}\s?\d{4}))(\s?\#(\d{4}|\d{3}))?$/)
        # numbers = @contents.scan(/[+44]/)
        numbers
    end
end