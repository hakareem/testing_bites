require "string_builder"

RSpec.describe StringBuilder do
 it "returns the length of the string" do
  str = StringBuilder.new
  str.add("carbon")
  result = str.size
  expect(result).to eq 6
 end

 it "returns the content inside the string" do
  str = StringBuilder.new
  str.add("water")
  result = str.output
  expect(result).to eq "water"
 end

 it "returns a length of 0 to start with" do
  str = StringBuilder.new
  expect(str.size()).to eq 0
 end
end