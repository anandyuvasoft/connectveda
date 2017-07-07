# spec/models/person_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do

  it "for successfully create user" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "is not valid without first name" do
    user = build(:user, first_name:nil)
    expect(user).to_not be_valid
  end

  it "is not valid without last name" do
    user = build(:user, last_name:nil)
    expect(user).to_not be_valid
  end

  it "is not valid without email" do
    user = build(:user, email:nil)
    expect(user).to_not be_valid
  end

  it "it's valid with phone" do
    user = build(:user, phone:nil)
    expect(user).to be_valid
  end

  it "is not valid without password & password_confirmation" do
    user = build(:user, password:nil, password_confirmation:nil)
    expect(user).to_not be_valid
  end

  it "For valid email format" do
    user = build(:user, email:"abc.com")
    expect(user).to_not be_valid
  end
end


