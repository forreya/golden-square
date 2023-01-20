require 'diary'
require 'entry'
require 'todo'

describe Diary do
    before(:each) do
        @diary = Diary.new
        @entry_1 = Entry.new('a poem','on this sunny morning, i went on a walk')
        @entry_2 = Entry.new('a song','on this raining night, i danced in the rain')
        
    end

    it 'returns a message when no entries in the diary' do
        expect(@diary.all_titles).to eq 'You have no entries currently.'
    end

    it 'adds entry to the diary and returns all the titles as an array' do
        @diary.add(@entry_1)
        @diary.add(@entry_2)
        expect(@diary.all_titles).to eq [@entry_1,@entry_2]
    end

    it 'raises an error if the entry title does not exist' do
        expect{@diary.read_entry(@entry_1.title)}.to raise_error 'This entry does not exist.'
    end

    it 'searches the title from the list and returns the entry content' do
        @diary.add(@entry_1)
        @diary.add(@entry_2)
        expect(@diary.read_entry(@entry_1.title)).to eq'on this sunny morning, i went on a walk'
    end
end