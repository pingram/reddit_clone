require 'spec_helper'

describe LinkSub do
  subject(:link_sub) { build(:link_sub) }

  describe "validations" do
    it { should validate_presence_of(:link) }
    it { should validate_presence_of(:sub) }
  end

  describe "associations" do
    it { should belong_to(:link) }
    it { should belong_to(:sub) }
  end
end
