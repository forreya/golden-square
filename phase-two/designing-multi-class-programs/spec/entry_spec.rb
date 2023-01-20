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
end