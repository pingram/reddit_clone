class Link < ActiveRecord::Base
  validates :title, :url, :user, presence: true

  belongs_to :user
  has_many :link_subs
  has_many :comments
  has_many :subs, through: :link_subs

  def comments_by_parent_id
    link_comments = self.comments

    comment_hash = Hash.new { |h,v| h[v] = [] }
    link_comments.each do |link_comment|
      comment_hash[link_comment.parent_comment_id] << link_comment
    end
    comment_hash
  end
end
