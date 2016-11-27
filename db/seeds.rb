host = User.create(email: "host@host.com", password: "password", name: "Host", homebase: "Austin", host: true)
host2 = User.create(email: "host2@host2.com", password: "password", name: "Host2", homebase: "Austin", host: true)
host3 = User.create(email: "host3@host3.com", password: "password", name: "Host3", homebase: "Austin", host: true)
host4 = User.create(email: "host4@host4.com", password: "password", name: "Host4", homebase: "Austin", host: true)
host5 = User.create(email: "host5@host5.com", password: "password", name: "Host5", homebase: "Austin", host: true)
host6 = User.create(email: "host6@host6.com", password: "password", name: "Host6", homebase: "Austin", host: true)
test = User.create(email: "test@test.com", password: "password", name: "Test", homebase: "Austin")


Category.create(title: "Art", description: "Local art tours", image: "/images/art.jpg")
Category.create(title: "Music", description: "Music around town", image: "/images/music.jpg")
Category.create(title: "Food & Drink", description: "Grab a bite or a pint", image: "/images/food.jpg")
Category.create(title: "Nightlife", description: "Take a night out on the town", image: "/images/nightlife.jpg")
Category.create(title: "Fashion", description: "Hit the best shopping spots in the city", image: "/images/fashion.jpg")
Category.create(title: "Outdoors", description: "Get some fresh air", image: "/images/outdoors.jpg")
Category.create(title: "Events", description: "Events around town", image: "/images/events.jpg")
Category.create(title: "Sports", description: "Root for the home team", image: "/images/sports.jpg")
Category.create(title: "History", description: "Dip into the past" image: "/images/")

#host 1 cats: art and food
UserCategory.create(host_id: 1, category_id: 1)
UserCategory.create(host_id: 1, category_id: 3)
Tag.create(specialty: "Ancient Greek", category_id: 1)
Tag.create(specialty: "Dive bars", category_id: 3)

#host 2 cats: music and food
UserCategory.create(host_id: 2, category_id: 2)
UserCategory.create(host_id: 2, category_id: 3)
Tag.create(specialty: "Local rock scene", category_id: 2)
Tag.create(specialty: "Fine Dining", category_id: 3)

#host 3 cats: nightlife and fashion
UserCategory.create(host_id: 3, category_id: 4)
UserCategory.create(host_id: 3, category_id: 5)
Tag.create(specialty: "Dirty 6th", category_id: 4)
Tag.create(specialty: "Local boutiques", category_id: 5)

#host 4 cats: outdoors and events
UserCategory.create(host_id: 4, category_id: 6)
UserCategory.create(host_id: 4, category_id: 7)
Tag.create(specialty: "hiking", category_id: 6)
Tag.create(specialty: "SWSW", category_id: 7)

#host 5 cats: sports and history
UserCategory.create(host_id: 5, category_id: 8)
UserCategory.create(host_id: 5, category_id: 9)
Tag.create(specialty: "Texas Longhorns Football", category_id: 8)
Tag.create(specialty: "Texas history", category_id: 9)

#host 6 cats: music and nightlife
UserCategory.create(host_id: 5, category_id: 2)
UserCategory.create(host_id: 5, category_id: 4)
Tag.create(specialty: "Hip Hop", category_id: 2)
Tag.create(specialty: "Rainey St.", category_id: 4)
