require "check_codeword"

RSpec.describe "check_codeword method" do
 it "returns correct if codeword is equal to horse" do
  result = check_codeword("horse")
  expect(result).to eq "Correct! Come in."
 end

 it "returns wrong if codeword is not equal to horse" do
  result = check_codeword("apple")
  expect(result).to eq "WRONG!"
 end

  it "returns close if codeword starts with h and ends with e" do
  result = check_codeword("hose")
  expect(result).to eq "Close, but nope."
 end
 
end