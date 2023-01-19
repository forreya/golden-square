
# To Do List Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
class MusicTracker
  def initialize()
    # creates global 'all_music' variable (set to empty array)
  end

  def add(track) # task is a string
    # Throws an exception if track is an empty string...
    # ...tells user no track was inputted
    # otherwise, adds 'track' argument into the 'all_music' variable
  end

  def see_tracks()
    # if 'all_music' is empty, informs user that no tracks has been added yet
    # returns 'all_music' array as a nicely formatted string
  end
end
```

## 3. Create Examples as Tests

```ruby
# 1
music_tracker = MusicTracker.new()
music_tracker.add("") # => 'The track name cannot be empty."

# 2
music_tracker = MusicTracker.new()
music_tracker.see_tracks() # => "Your tracklist is empty."

# 3
music_tracker = MusicTracker.new()
music_tracker.add("starboy")
music_tracker.see_tracks() # => "Your tracks: starboy"

# 3
music_tracker = MusicTracker.new()
music_tracker.add("starboy")
music_tracker.add("life on mars?")
music_tracker.see_tracks() # => "Your tracks: starboy, life on mars?"
```

## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._