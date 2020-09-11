Comment.destroy_all
Portrait.destroy_all
User.destroy_all 
  
  require 'rubygems'
  require 'httparty'

    def getImages
    response = HTTParty.get('https://api.unsplash.com/photos/?client_id=49IDngP5JuN5cZsMySEvL3Qskhum7RDyuj7DtQB9q5w')
    parsed = JSON.parse(response.body)
    userImg = parsed.map{|img| {img_url: img['urls']['regular'], description: img['alt_description']}}
    return userImg
    end
  
    User.create({
      name: "Jim Halpert", 
      bio: "My Passion in life is to capture the beauty in people, places, and objects", 
      image: "https://akns-images.eonline.com/eol_images/Entire_Site/2019027/rs_600x600-190127175953-600.2019-sag-awards-red-carpet-fashions-john-krasinsk.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top"
      })


  getImages.map do |images|
  Portrait.create(img_url: images[:img_url], description: images[:description], user_id: User.all.sample.id, like: rand(1..10))
  end


c1 = Comment.create(content: "Very well done!", portrait_id: 1)
c2 = Comment.create(content: "This is beautiful! ", portrait_id: 2)
c3 = Comment.create(content: "What a life!", portrait_id: 3)
c4 = Comment.create(content: "Love this!", portrait_id: 4)
c5 = Comment.create(content: "Incredible!!", portrait_id: 5)
c6 = Comment.create(content: "Ahh!", portrait_id: 6)
c7 = Comment.create(content: "Wonderful!", portrait_id: 7)
c8 = Comment.create(content: "You've got an eye for beauty!", portrait_id: 8)
c9 = Comment.create(content: "I appreciate this!", portrait_id: 9)
c10 = Comment.create(content: "I am speechless", portrait_id: 10)

puts 'seeds works'
