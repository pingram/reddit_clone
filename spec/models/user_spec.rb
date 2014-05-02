require 'spec_helper'

describe User do
  subject(:user) { build(:user) }

  describe "validations" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password_digest) }
    # it { should validate_presence_of(:session_token) }
  end

  describe "associations" do
    it { should have_many(:links) }
    it { should have_many(:comments) }
  end

  describe ""
end
