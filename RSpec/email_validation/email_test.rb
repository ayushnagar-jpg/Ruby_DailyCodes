require 'rspec'
require_relative 'email'

RSpec.describe Email do
  let(:email_validator) { Email.new }

  describe "#validate_email?" do
    it "returns true for a valid email" do
      expect(email_validator.validate_email?("test@example.com")).to be(true)
    end

    it "raises an error for an invalid email" do
      expect { email_validator.validate_email?("invalid-email") }.to raise_error(InvalidEmailError, "Email is invalid")
    end
  end
end