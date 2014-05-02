class Sub < ActiveRecord::Base
  validates :name, :moderator, presence: true

  belongs_to :moderator, class_name: "User", foreign_key: :moderator_id
  has_many :link_subs
  has_many :links, through: :link_subs
end
