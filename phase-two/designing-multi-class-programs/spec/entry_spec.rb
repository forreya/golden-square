require 'entry'

describe Entry do
    before(:each) do
        @entry = Entry.new('a poem','on this sunny morning, i went on a walk')
    end

    it 'returns title' do
        expect(@entry.title).to eq 'a poem'
    end

    it 'returns contents' do
        expect(@entry.contents).to eq 'on this sunny morning, i went on a walk'
    end

    it 'returns number of words in contents' do
        expect(@entry.count_words).to eq 9
    end

    it 'returns an array of all the phone numbers found in this entry' do
        entry5 = Entry.new('a number','i went on a walk and found a phone number which was +447222555555')
        expect(entry5.show_numbers).to eq ['+447222555555']
    end
end

# 446388162837