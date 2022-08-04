require "reminder"


RSpec.describe Reminder do
 it "reminds the user to do a task" do
  reminder = Reminder.new("Josh")
  reminder.remind_me_to("Run")
  result = reminder.remind()
  expect(result).to eq "Run, Josh!"
 end

 context "when nothing has been set" do
 it "fails" do
  reminder = Reminder.new("Harith")
  expect {reminder.remind()}.to raise_error "No reminder set!"
  end
 end
end