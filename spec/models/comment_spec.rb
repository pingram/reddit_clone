require 'spec_helper'

describe Comment do

    subject(:comment) { build(:comment) }

    describe "validations" do
      it { should validate_presence_of(:body) }
      it { should validate_presence_of(:link) }
    end

    describe "associations" do
      it { should belong_to(:link) }
      it { should have_many(:comments) }
      it { should belong_to(:parent_comment) }
    end
end
