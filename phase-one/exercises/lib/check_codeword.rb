
def check_codeword(codeword)
  if codeword == 'kaeru'
    "Correct! Come in..."
  elsif codeword.chars.first == 'k' && codeword.chars.last == 'u'
    "Close, but not quite..."
  else
    "Entry denied."
  end
end