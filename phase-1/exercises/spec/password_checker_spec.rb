
require 'password_checker'

RSpec.describe PasswordChecker do
  context "empty string inputted" do
    it "informs user password is too short" do
      password_checker = PasswordChecker.new()
      result = password_checker.check('')
      expect(result).to eq "Password must be longer or equal to 8 characters."
    end
  end

  context "string inputted" do
    it "password shorter than 8 characters inputted, informs user password is too short" do
      password_checker = PasswordChecker.new()
      result = password_checker.check('neko')
      expect(result).to eq "Password must be longer or equal to 8 characters."
    end

    it "password equal to 8 characters inputted, returns true" do
      password_checker = PasswordChecker.new()
      result = password_checker.check('iameight')
      expect(result).to eq true
    end

    it "password more than 8 characters inputted, returns true" do
      password_checker = PasswordChecker.new()
      result = password_checker.check('verylongpassword!!!!!!!')
      expect(result).to eq true
    end
  end
end