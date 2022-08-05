require "present"

RSpec.describe Present do

 context "sucessfully wraps and unwraps contents"do
  it "wraps and unwraps contents" do
   present = Present.new
   present.wrap(2)
   expect(present.unwrap).to eq 2
  end
 end

 context "when no contents have been wrapped" do
 it "fails if user trys to unwrap" do
  content = Present.new
  expect {content.unwrap}.to raise_error "No contents have been wrapped."
 end
end

 it "raises an error if contents is not empty" do
  content = Present.new
  content.wrap(4)
  expect {content.wrap(3)}.to raise_error "A contents has already been wrapped."
 end
end