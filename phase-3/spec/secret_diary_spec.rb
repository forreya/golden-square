
require 'secret_diary'

describe SecretDiary do
  it "prevents user from reading" do
    diary = double(:Diary, read: "classified files")
    secret_diary = SecretDiary.new(diary)
    expect{secret_diary.read}.to raise_error "Go away!"
  end

  it "unlocks diary and then locks diary" do
    diary = double(:Diary, read: "classified files")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'classified files'
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end
end