# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#dont fuck this up Akiko!

user1 = User.create(name: "Penelope", bio: "Cruz")

p1 = Portrait.create(img_url: "https://images.unsplash.com/photo-1594230655204-c0fb45f9430c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "insert text here", like: "1", user_id: 1)
p2 = Portrait.create(img_url: "https://images.unsplash.com/photo-1591870509558-26b7eee6d549?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "insert text here", like: "1", user_id: 1)
p3 = Portrait.create(img_url: "https://images.unsplash.com/photo-1581481615985-ba4775734a9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "insert text here", like: "1", user_id: 1)
p4 = Portrait.create(img_url: "https://images.unsplash.com/photo-1574868991734-f850ee3bc326?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "insert text here", like: "1", user_id: 1) 
p5 = Portrait.create(img_url: "https://images.unsplash.com/photo-1598885511440-218a568ede3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1448&q=80", description: "insert text here", like: "1", user_id: 1)
p6 = Portrait.create(img_url: "https://images.unsplash.com/photo-1512591290618-904e04936827?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "insert text here", like: "1", user_id: 1)
p7 = Portrait.create(img_url: "https://images.unsplash.com/photo-1526970371649-4e603ab60f2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2498&q=80", description: "insert text here", like: "1", user_id: 1)
p8 = Portrait.create(img_url: "ttps://images.unsplash.com/photo-1534655882117-f9eff36a1574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "insert text here", like: "1", user_id: 1)
p9 = Portrait.create(img_url: "https://images.unsplash.com/photo-1599061827636-52c804e898a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80", description: "insert text here", like: "1", user_id: 1)
p10 = Portrait.create(img_url: "https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1969&q=80", description: "insert text here", like: "1", user_id: 1)

c1 = Comment.create(content: "Insert text here", portrait_id: 1)
c2 = Comment.create(content: "Insert text here", portrait_id: 2)
c3 = Comment.create(content: "Insert text here", portrait_id: 3)
c4 = Comment.create(content: "Insert text here", portrait_id: 4)
c5 = Comment.create(content: "Insert text here", portrait_id: 5)
c6 = Comment.create(content: "Insert text here", portrait_id: 6)
c7 = Comment.create(content: "Insert text here", portrait_id: 7)
c8 = Comment.create(content: "Insert text here", portrait_id: 8)
c9 = Comment.create(content: "Insert text here", portrait_id: 9)
c10 = Comment.create(content: "Insert text here", portrait_id: 10)


# ActiveRecord::Schema.define(version: 2020_09_04_221010) do

#     create_table "comment", force: :cascade do |t|
#       t.string "content"
#       t.integer "Portrait_id"
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#     end
  
#     create_table "Portrait", force: :cascade do |t|
#       t.string "img_url"
#       t.string "description"
#       t.integer "like"
#       t.integer "user_id"
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#     end
  
#     create_table "user", force: :cascade do |t|
#       t.string "name"
#       t.string "bio"
#       t.datetime "created_at", precision: 6, null: false
#       t.datetime "updated_at", precision: 6, null: false
#     end
  
#   end
  