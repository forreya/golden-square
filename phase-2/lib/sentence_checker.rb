
def sentence_checker(sentence)
  punctuation_array = %w(. ? !)
  capital_letters = ('A'..'Z').to_a.map{|letter| letter}
  if !punctuation_array.include?(sentence[-1]) || !capital_letters.include?(sentence[0])
    false
  else
    true
  end
end