require "counter"


RSpec.describe Counter do
  it "returns the number that the user has counted to" do
    counter = Counter.new
    counter.add(5)
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 10 so far."
  end

  it "returns 0 if user doesn't add to the count" do
    count = Counter.new
    expect(count.report).to eq "Counted to 0 so far."
  end

  end