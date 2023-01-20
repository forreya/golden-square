require 'diary'
require 'entry'
require 'todo'

describe Diary do
    before(:each) do
        @diary = Diary.new
        @entry1 = Entry.new('a poem','on this sunny morning, i went on a walk')
        @entry2 = Entry.new('a song','on this raining night, i danced in the rain')
        
    end

    it 'returns a message when no entries in the diary' do
        expect(@diary.all_titles).to eq 'You have no entries currently.'
    end

    it 'adds entry to the diary and returns all the titles as an array' do
        @diary.add(@entry1)
        @diary.add(@entry2)
        expect(@diary.all_titles).to eq [@entry1,@entry2]
    end

    it 'raises an error if the entry title does not exist' do
        expect{@diary.read_entry(@entry1.title)}.to raise_error 'This entry does not exist.'
    end

    it 'searches the title from the list and returns the entry content' do
        @diary.add(@entry1)
        @diary.add(@entry2)
        expect(@diary.read_entry(@entry1.title)).to eq'on this sunny morning, i went on a walk'
    end

    it "returns the instance of the best entry for the user to read based on the wpm & numbers of minutes" do
        entry3 = Entry.new('a poem','i went on a walk')
        entry4 = Entry.new('a song','on this stormy rainy night, i danced in the rain')
        @diary.add(entry3)
        @diary.add(entry4)
        result = @diary.find_best_entry(1,5)
        expect(result).to eq entry3

    end
end