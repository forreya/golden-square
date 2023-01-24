
require 'secret_diary'
require 'diary'

describe "integration" do
  it "prevents user from reading" do
    diary = Diary.new('classified files')
    secret_diary = SecretDiary.new(diary)
    expect{secret_diary.read}.to raise_error "Go away!"
  end

  it "unlocks secret diary and returns the contents" do
    diary = Diary.new('classified files')
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'classified files'
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end

end