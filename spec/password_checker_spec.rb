require "password_checker"


RSpec.describe PasswordChecker do
 context "when password length is below 8" do  
  it "fails" do
   pass = PasswordChecker.new
   expect{pass.check("aBDDW")}.to raise_error "Invalid password, must be 8+ characters."
  end
 end

it "passes the test when password length is larger than 7" do
 pass = PasswordChecker.new
 expect(pass.check("ABSJFJAKSMKKD")).to eq true
end

end