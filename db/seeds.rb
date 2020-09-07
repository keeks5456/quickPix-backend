# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'httparty'

def getImages
response = HTTParty.get('https://api.unsplash.com/photos/?')
parsed = JSON.parsed(response.body)
end





user1 = User.create(name: "Penelope", bio: "Cruz")


p1 = Portrait.create(img_url: "https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1969&q=80", description: "The Perfect Breakfast", like: "1", user_id: 1)
p2 = Portrait.create(img_url: "https://images.unsplash.com/photo-1599061827636-52c804e898a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80", description: "Hot Air Ballon Sailing", like: "1", user_id: 1)
p3 = Portrait.create(img_url: "https://images.unsplash.com/photo-1534655882117-f9eff36a1574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "Beer Barrels", like: "1", user_id: 1)
p4 = Portrait.create(img_url: "https://images.unsplash.com/photo-1526970371649-4e603ab60f2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2498&q=80", description: "The Light-House", like: "1", user_id: 1) 
p5 = Portrait.create(img_url: "https://images.unsplash.com/photo-1512591290618-904e04936827?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "As Above, So Below", like: "1", user_id: 1)
p6 = Portrait.create(img_url: "https://images.unsplash.com/photo-1598885511440-218a568ede3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1448&q=80", description: "Melbourn", like: "1", user_id: 1)
p7 = Portrait.create(img_url: "https://images.unsplash.com/photo-1574868991734-f850ee3bc326?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "Your Next Phone Screen Background", like: "1", user_id: 1)
p8 = Portrait.create(img_url: "https://files.slack.com/files-pri/T02MD9XTF-F01AAPE3QH2/image.png", description: "insert text here", like: "1", user_id: 1)
p9 = Portrait.create(img_url: "https://images.unsplash.com/photo-1581481615985-ba4775734a9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "A Clean Desk Makes Means A Happy Dev", like: "1", user_id: 1)
p10 = Portrait.create(img_url: "https://files.slack.com/files-pri/T02MD9XTF-F019Z777754/image_from_ios.jpg", description: "Aangnisha", like: "1", user_id: 1)


c1 = Comment.create(content: "Very well done! What camera did you take this with?", portrait_id: 1)
c2 = Comment.create(content: "This is beautiful! ", portrait_id: 2)
c3 = Comment.create(content: "When beer is life", portrait_id: 3)
c4 = Comment.create(content: "This is the exact spot my husband proposed to me! Love this!", portrait_id: 4)
c5 = Comment.create(content: "Boy, I would feel like an ant if I saw this in real life!", portrait_id: 5)
c6 = Comment.create(content: "Insert text here", portrait_id: 6)
c7 = Comment.create(content: "Insert text here", portrait_id: 7)
c8 = Comment.create(content: "Insert text here", portrait_id: 8)
c9 = Comment.create(content: "Insert text here", portrait_id: 9)
c10 = Comment.create(content: "Insert text here", portrait_id: 10)

# needs more comments

puts 'seeds works'

