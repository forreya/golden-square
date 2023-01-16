
require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "receives 'kaeru' and invites the user in" do
    result = check_codeword('kaeru')
    expect(result).to eq "Correct! Come in..."
  end

  it "receives 'karu' and tells the user their code word is close, but not quite right" do
    result = check_codeword('karu')
    expect(result).to eq "Close, but not quite..."
  end

  it "receives 'frog' and denies the user entry" do
    result = check_codeword('frog')
    expect(result).to eq "Entry denied."
  end
end