# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'

User.destroy_all
Event.destroy_all
Game.destroy_all


arr = (1..1000).to_a

arr.each do |x|
  doc = Nokogiri::XML(open("https://www.boardgamegeek.com/xmlapi/boardgame/#{x}")) do |config|
    config.strict.noblanks
  end
  if !doc.xpath('//error').empty?
    next
  end
  puts doc
  description = doc.xpath('//description').children.text.gsub('<br/>', "")
  name = doc.xpath('//name').children.first.text
  img = doc.css('thumbnail').children.to_html
  category = doc.css('boardgamecategory').children.to_html
  mechanic = doc.css('boardgamemechanic').children.to_html
  playing_time = doc.css('playingtime').children.to_html
  min_players = doc.css('minplayers').children.to_html
  max_players = doc.css('maxplayers').children.to_html
  publisher = doc.css('boardgamepublisher').children.to_html
  Game.create(name: name, img: img, category: category, mechanic: mechanic, playing_time: playing_time, description: description, min_players: min_players, max_players: max_players, publisher: publisher)
end



josh = User.create(name: 'Josh', username: 'jpgrbeat', password: 'pw', email: 'joshua.ross.miller@gmail.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love long, grueling eruos and co-op games'  )
john = User.create(name: 'John', username: 'jdawg', password: 'pw', email: 'john@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
ryan = User.create(name: 'Ryan', username: 'Ryguy', password: 'pw', email: 'ryan@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
emily = User.create(name: 'Emily', username: 'emazing', password: 'pw', email: 'emily@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
andres = User.create(name: 'Andres', username: 'Surferguy', password: 'pw', email: 'andres@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
alvaro = User.create(name: 'Alvaro', username: 'Mr.Muscles', password: 'pw', email: 'alvaro@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
ayana = User.create(name: 'Ayana', username: 'ArtsyandIknowit', password: 'pw', email: 'ayana@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
ruby = User.create(name: 'Ruby', username: 'RubiesnotDaimonds', password: 'pw', email: 'ruby@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
hillary = User.create(name: 'Hillary', username: 'Filmbuff404', password: 'pw', email: 'hillary@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
rob = User.create(name: 'Rob', username: 'MasterCoder', password: 'pw', email: 'rob@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
lane = User.create(name: 'Lane', username: 'DramaGeek', password: 'pw', email: 'jlane@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )
sydney = User.create(name: 'Sydney', username: 'Videodrome', password: 'pw', email: 'sydney@flatiron.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love games'  )

friend1= Friend.create(invitor_id: josh.id, invitee_id: john.id)
friend2 = Friend.create(invitor_id: josh.id, invitee_id: ryan.id )
friend3 = Friend.create(invitor_id: josh.id, invitee_id: emily.id)
friend4 = Friend.create(invitor_id: josh.id, invitee_id: ruby.id)
friend5 = Friend.create(invitor_id: josh.id, invitee_id: andres.id)
friend6 = Friend.create(invitor_id: josh.id, invitee_id: ayana.id)
friend7 = Friend.create(invitor_id: josh.id, invitee_id: alvaro.id)


event1 = Event.create(title:"Co-ops only",description: "'Let's work together on this one",address:'107 Launchris Dr.',date: '2018-10-28', time_start:'14:00', time_end:'17:00', player_count: 12)
event2 = Event.create(title:"Tuesday Game night",description: 'Weekly board game bash at your favorite place',address:'123 Easy st.',date: '2018-10-02',time_start:'14:00', time_end:'17:00', player_count: 20)
event3 = Event.create(title:"Game night at Josh's",description: 'invite only game night',address:'4350 Lee hwy',date: '2018-10-05',time_start:'14:00', time_end:'17:00', player_count: 8)
