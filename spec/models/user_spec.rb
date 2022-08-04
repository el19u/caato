# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do

  describe "validations" do
    it "valid a email, password, and password_confirmation" do
      user = User.new(
        email: "foo@mail.com",
        password: "foopassword",
        password_confirmation: "foopassword"
      )
      expect(user).to be_valid
    end

    it "valid a password, minimum and blank" do
      user = User.new(
        email: "foo@mail.com",
        password: nil,
        password_confirmation: nil
      )
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 3 characters)")
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end

    it "email cannot be blank " do
      user = User.new(email: nil, password: "foopassword", password_confirmation: "foopassword")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end
