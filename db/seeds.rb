Comment.destroy_all
Portrait.destroy_all
User.destroy_all 
  
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
    response = HTTParty.get('https://api.unsplash.com/photos/?client_id=49IDngP5JuN5cZsMySEvL3Qskhum7RDyuj7DtQB9q5w')
    parsed = JSON.parse(response.body)
    userImg = parsed.map{|img| {img_url: img['urls']['regular'], description: img['alt_description']}}
    return userImg
    end
    getImages




    User.create({
      name: "Micheal B. Jordan", 
      bio: "My Passion in life is to capture the beauty in people, places, and objects", 
      image: "https://www.producedbyconference.com/los-angeles/wp-content/uploads/2019/04/michael-b-jordan.jpg"
      })


  getImages.map do |images|
    # byebug
  Portrait.create(img_url: images[:img_url], description: images[:description], user_id: User.all.sample.id, like: rand(1..10))
  # byebug
  end


c1 = Comment.create(content: "Very well done! What camera did you take this with?", portrait_id: 1)
c2 = Comment.create(content: "This is beautiful! ", portrait_id: 2)
c3 = Comment.create(content: "When beer is life", portrait_id: 3)
c4 = Comment.create(content: "This is the exact spot my husband proposed to me! Love this!", portrait_id: 4)
c5 = Comment.create(content: "Boy, I would feel like an ant if I saw this in real life!", portrait_id: 5)
c6 = Comment.create(content: "Ahh! Melborn! How I've missed you!", portrait_id: 6)
c7 = Comment.create(content: "Splish Splash!", portrait_id: 7)
c8 = Comment.create(content: "Love the minimalistic look!", portrait_id: 8)
c9 = Comment.create(content: "Underratted character, dont @ me!", portrait_id: 9)
c10 = Comment.create(content: "LOL! What a troll", portrait_id: 10)

# needs more comments

puts 'seeds works'

# p1 = Portrait.create(img_url: userImages[0], description: "The Perect Breakfast", like: "1", user_id: 1)
# p2 = Portrait.create(img_url: "https://images.unsplash.com/photo-1599061827636-52c804e898a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80", description: "Hot Air Ballon Sailing", like: "1", user_id: 1)
# p3 = Portrait.create(img_url: "https://images.unsplash.com/photo-1534655882117-f9eff36a1574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "Beer Barrels", like: "1", user_id: 1)
# p4 = Portrait.create(img_url: "https://images.unsplash.com/photo-1526970371649-4e603ab60f2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2498&q=80", description: "The Light-House", like: "1", user_id: 1) 
# p5 = Portrait.create(img_url: "https://images.unsplash.com/photo-1512591290618-904e04936827?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "As Above, So Below", like: "1", user_id: 1)
# p6 = Portrait.create(img_url: "https://images.unsplash.com/photo-1598885511440-218a568ede3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1448&q=80", description: "Melbourn", like: "1", user_id: 1)
# p7 = Portrait.create(img_url: "https://images.unsplash.com/photo-1574868991734-f850ee3bc326?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80", description: "Your Next Phone Screen Background", like: "1", user_id: 1)
# p8 = Portrait.create(img_url: "https://files.slack.com/files-pri/T02MD9XTF-F01AAPE3QH2/image.png", description: "insert text here", like: "1", user_id: 1)
# p9 = Portrait.create(img_url: "https://images.unsplash.com/photo-1581481615985-ba4775734a9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", description: "A Clean Desk Makes Means A Happy Dev", like: "1", user_id: 1)
# p10 = Portrait.create(img_url: "https://files.slack.com/files-pri/T02MD9XTF-F019Z777754/image_from_ios.jpg", description: "Aangnisha", like: "1", user_id: 1)
