# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all

josh = User.create(name: 'Josh', username: 'jpgrbeat', password: 'pw', email: 'joshua.ross.miller@gmail.com',img: 'https://static.homesandproperty.co.uk/s3fs-public/styles/article_small/public/thumbnails/image/2018/09/18/14/weefdiary.jpg',description: 'I love long, grueling eruos and co-op games'  )



event1 = Event.create(title:"Co-ops only",description: "'Let's work together on this one",address:'107 Launchris Dr.',date: '2018-10-28', time_start:'14:00', time_end:'17:00', player_count: 12)
event2 = Event.create(title:"Tuesday Game night",description: 'Weekly board game bash at your favorite place',address:'123 Easy st.',date: '2018-10-02',time_start:'14:00', time_end:'17:00', player_count: 20)
event3 = Event.create(title:"Game night at Josh's",description: 'invite only game night',address:'4350 Lee hwy',date: '2018-10-05',time_start:'14:00', time_end:'17:00', player_count: 8)
