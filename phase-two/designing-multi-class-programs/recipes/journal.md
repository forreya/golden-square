# Journal Design Recipe

## 1. Describe the Problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

Diagram made using asciiflow.com:

```
               ┌────────────────────────────────────┐
               │Diary                               │
               │                                    │
               │                                    │
               │- add(entry)                        │
               │- all_titles                        │
               │- read_entry(entry_title)           │
               │- find_best_entry(wpm, minutes)     │
               │- show_tasks                        │
               │                                    │
               ├────────────────────────────────────┤
               │                                    │
               ▼                                    ▼
               │                                    │
               │                                    │
┌──────────────┴─────────┐      ┌───────────────────┴───┐
│Entry(title, contents)  │      │ToDo(task)             │
│                        │      │                       │
│                        │      │                       │
│- title                 │      │- show_task            │
│- contents              │      │- mark_done!           │
│- count_words           │      │- is_done?             │
│                        │      │                       │
└────────────────────────┘      └───────────────────────┘
```

```ruby

# Diary class
class Diary
    def initialize
        # ...
    end

    def add(entry) #entry is an instance of Entry
        # Entry gets added to the Diary
        # Returns nothing
    end

    def all_titles
        # returns all the entries titles as an array
    end

    def read_entry(title) #title is a string
        # search title from all entries
        # return the contents of the target entry
    end

    def find_best_entry(wpm, minutes) # both are integers
         # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
        # Returns an instance of diary entry representing the entry that is closest 
         # to, but not over, the length that the user could read in the minutes they
        # have available given their reading speed.
    end

    def show_tasks
        # returns all the todo tasks as an array
    end

    def search_phone_number
        # returns all the phone numbers from the entries contents
    end

end

# Entry class
class Entry 
  def initialize(title, contents) # both arguments are strings
    # title gets added to the entry
    # contents gets added to the entry
    # Returns nothing
  end

  def title
    # returns title (a string)
  end

  def contents
    # returns contents (a string)
  end

  def count_words
    # returns total number of words in contents (an integer)
  end
end

class Todo
    def initialize(task) # a string
        # @task = task
        # @is_completed = false
    end

    def show_task
        # returns a task as a string
    end

    def mark_done!
        # marks task as done
    end

    def is_done?
        # returns true if it is done
        # Otherwise, returns false
    end
end

```