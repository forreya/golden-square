
require 'cat_facts'

describe CatFacts do
  it "gets a cat fact from API and returns it in formatted form" do
    fake_requester = double(:requester)
    expect(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Cats step with both left legs, then both right legs when they walk or run.","length":74}')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq "Cat fact: Cats step with both left legs, then both right legs when they walk or run."
  end
end