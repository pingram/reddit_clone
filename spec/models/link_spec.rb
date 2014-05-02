require 'spec_helper'

describe Link do
  subject(:link) { build(:link) }

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:user) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:subs) }
    it { should have_many(:comments) }
  end

  describe "#comments_by_parent_id" do
    let(:link1) { create(:link) }
    let(:parent_comment) { create(:top_comment, link_id: link1.id) }
      let(:child_comment)  do
        create(:comment,
          parent_comment_id: parent_comment.id,
          link_id: link1.id)
      end
        let(:grandchild_comment)  do
          create(:comment, parent_comment_id: child_comment.id,
          link_id: link1.id)
        end

      # let(:child_comment2)  do
      #   create(:comment, parent_comment_id: parent_comment.id)
      # end

    it "should have all child comments" do
      expected = {nil => [parent_comment],
        parent_comment.id => [child_comment],
        child_comment.id => [grandchild_comment] }

      evaluated = link1.comments_by_parent_id
      expect(evaluated).to eq(expected)
    end

  end

end
