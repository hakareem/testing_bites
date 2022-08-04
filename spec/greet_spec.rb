require "greet.rb"

RSpec.describe "greet method" do
 it "says hello to someone" do
  result = greet("Harith")
  expect(result).to eq "Hello, Harith!"
 end

end