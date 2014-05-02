# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



link1 = FactoryGirl.create(:link)

parent_comment = FactoryGirl.create(:top_comment, link_id: link1.id)


4.times do |i|
  FactoryGirl.create(:comment,
    parent_comment_id: parent_comment.id,
    link_id: link1.id)
end

FactoryGirl.create(:comment,
  parent_comment_id: parent_comment.comments[1].id,
  link_id: link1.id)
