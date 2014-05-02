require 'spec_helper'

describe Sub do
  subject(:sub) { build(:sub) }

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:moderator) }
    # it { should validate_presence_of(:session_token) }
  end

  describe "associations" do
    it { should belong_to(:moderator) }
    it { should have_many(:links) }
    it { should have_many(:comments) }
    # it { should have_many(:comments) }
  end
end
