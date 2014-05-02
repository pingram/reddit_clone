class Comment < ActiveRecord::Base
  validates :body, :link, presence: true

  belongs_to :link
  belongs_to :parent_comment,
    class_name: "Comment",
    foreign_key: :parent_comment_id

  has_many :comments,
    class_name: 'Comment',
    foreign_key: :parent_comment_id,
    primary_key: :id
end
