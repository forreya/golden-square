
require "music_tracker"

describe MusicTracker do
  context "initialize music tracker object & call add method with an empty argument" do
    it "raises error saying track name cannot be empty" do
      music_tracker = MusicTracker.new()
      expect{ music_tracker.add("") }.to raise_error "The track name cannot be empty."
    end
  end

  context "initialize music tracker object & then call see_tracks method" do
    it "raises error telling user that the tracklist is empty" do
      music_tracker = MusicTracker.new()
      expect{ music_tracker.see_tracks() }.to raise_error "Your tracklist is empty."
    end
  end

  context "initialize music tracker object, adds one song, then call see_tracks method" do
    it "prints tracklist" do
      music_tracker = MusicTracker.new()
      music_tracker.add('starboy')
      result = music_tracker.see_tracks()
      expect(result).to eq "Your tracks: starboy"
    end
  end

  context "initialize music tracker object, adds two songs, then call see_tracks method" do
    it "prints tracklist" do
      music_tracker = MusicTracker.new()
      music_tracker.add('starboy')
      music_tracker.add('life on mars?')
      result = music_tracker.see_tracks()
      expect(result).to eq "Your tracks: starboy, life on mars?"
    end
  end
end