
def count_words(sentence)
  if sentence == ''
    0
  else
    sentence.split(' ').length
  end
end