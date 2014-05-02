require 'spec_helper'

describe UserVote do
  subject(:user_vote) { build(:user_vote) }

  describe "validations" do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:link) }
    it { should ensure_inclusion_of(:upvote).in_array([true, false]) }
    # it { should validate_presence_of(:session_token) }
  end

  describe "associations" do
    it { should belong_to(:link) }
    it { should belong_to(:user) }
  end

  describe ""
end
