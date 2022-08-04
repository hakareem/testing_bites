require "gratitudes"


RSpec.describe Gratitudes do
 
 it "returns all the gratitiudes the user has added" do
  grat = Gratitudes.new
  grat.add("Health")
  grat.add("Friends")
  expect(grat.format).to eq "Be grateful for: Health, Friends"
 end

 it "returns an empty array if user doesn't add any gratitudes" do
  grat = Gratitudes.new
  expect(grat.format).to eq "Be grateful for: "
 end
end