# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#dont fuck this up Akiko!

user1 = User.create(name: "Penelope", bio: "Cruz")

p1 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p2 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p3 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p4 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1) 
p5 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p6 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p7 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p8 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p9 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)
p10 = Portrait.create(img_url: "img_url", description: "insert text here", like: "1", user_id: 1)

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
  