
class MusicTracker
  def initialize
    @tracklist = []
  end
  
  def add(track)
    fail "The track name cannot be empty." if track == ''
    @tracklist.push(track)
  end

  def see_tracks()
    fail "Your tracklist is empty." if @tracklist.empty?
    tracklist_formatted = @tracklist.join(", ")
    "Your tracks: #{tracklist_formatted}"
  end
end