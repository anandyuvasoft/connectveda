# spec/models/person_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a valid factory" do
    #person = FactoryGirl.build(:person) it is also valid
    expect(FactoryGirl.build(:user)).to be_valid
  end

  # it "is invalid without a name" do
  #   user = FactoryGirl.build(:user, name: nil)
  #   expect(user).not_to be_valid
  # end

  # it "is invalid without an age" do
  #   user = FactoryGirl.build(:user, age: nil)
  #   expect(user).not_to be_valid
  # end

  # it "returns a person's identifier as a string" do
  #   user = FactoryGirl.build(:user, name: "Johnny", age: 12)
  #   expect(user.identifier).to eq("Johnny 12")
  # end
end

