class GrammarStats
  def initialize
    @total_checks = 0.0
    @successful_checks = 0.0
  end

  def check(text) 
    punctuation_array = %w(. ? !)
    capital_letters = ('A'..'Z').to_a.map{|letter| letter}
    @total_checks += 1
    if !punctuation_array.include?(text[-1]) || !capital_letters.include?(text[0])
      false
    else
      @successful_checks += 1
      true
    end
  end

  def percentage_good
    percentage = (@successful_checks/@total_checks) * 100
    percentage.floor
  end
end