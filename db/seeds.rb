host1 = User.create(email: "host1@host1.com", password: "password", name: "host1", homebase: "Austin", host: true)
host2 = User.create(email: "host2@host2.com", password: "password", name: "host2", homebase: "Austin", host: true)
host3 = User.create(email: "host3@host3.com", password: "password", name: "host3", homebase: "Austin", host: true)
host4 = User.create(email: "host4@host4.com", password: "password", name: "host4", homebase: "Seattle", host: true)
host5 = User.create(email: "host5@host5.com", password: "password", name: "host5", homebase: "Seattle", host: true)
host6 = User.create(email: "host6@host6.com", password: "password", name: "host6", homebase: "Seattle", host: true)
host7 = User.create(email: "host7@host7.com", password: "password", name: "host7", homebase: "Chicago", host: true)
host8 = User.create(email: "host8@host8.com", password: "password", name: "host8", homebase: "Chicago", host: true)
host9 = User.create(email: "host9@host9.com", password: "password", name: "host9", homebase: "Chicago", host: true)
host10 = User.create(email: "host10@host10.com", password: "password", name: "host10", homebase: "New York", host: true)
host11 = User.create(email: "host11@host11.com", password: "password", name: "host11", homebase: "New York", host: true)
host12 = User.create(email: "host12@host12.com", password: "password", name: "host12", homebase: "New York", host: true)
host13 = User.create(email: "host13@host13.com", password: "password", name: "host13", homebase: "Los Angeles", host: true)
host14 = User.create(email: "host14@host14.com", password: "password", name: "host14", homebase: "Los Angeles", host: true)
host15 = User.create(email: "host15@host15.com", password: "password", name: "host15", homebase: "Los Angeles", host: true)


guest1 = User.create(email: "guest1@guest1.com", password: "password", name: "guest1", homebase: "Austin", host: false)
guest2 = User.create(email: "guest2@guest2.com", password: "password", name: "guest2", homebase: "Austin", host: false)
guest3 = User.create(email: "guest3@guest3.com", password: "password", name: "guest3", homebase: "Austin", host: false)
guest10 = User.create(email: "guest10@guest10.com", password: "password", name: "guest10", homebase: "Seattle", host: false)
guest11 = User.create(email: "guest11@guest11.com", password: "password", name: "guest11", homebase: "Seattle", host: false)
guest12 = User.create(email: "guest12@guest12.com", password: "password", name: "guest12", homebase: "Seattle", host: false)
guest13 = User.create(email: "guest13@guest13.com", password: "password", name: "guest13", homebase: "Chicago", host: false)
guest14 = User.create(email: "guest14@guest14.com", password: "password", name: "guest14", homebase: "Chicago", host: false)
guest15 = User.create(email: "guest15@guest15.com", password: "password", name: "guest15", homebase: "Chicago", host: false)
guest22 = User.create(email: "guest22@guest22.com", password: "password", name: "guest22", homebase: "New York", host: false)
guest23 = User.create(email: "guest23@guest23.com", password: "password", name: "guest23", homebase: "New York", host: false)
guest24 = User.create(email: "guest24@guest24.com", password: "password", name: "guest24", homebase: "New York", host: false)
guest28 = User.create(email: "guest28@guest28.com", password: "password", name: "guest28", homebase: "Los Angeles", host: false)
guest29 = User.create(email: "guest29@guest29.com", password: "password", name: "guest29", homebase: "Los Angeles", host: false)
guest30 = User.create(email: "guest30@guest30.com", password: "password", name: "guest30", homebase: "Los Angeles", host: false)



Category.create(title: "Art", description: "Local art tours", image: "/images/art.jpg") #category_id = 1
Category.create(title: "Music", description: "Music around town", image: "/images/music.jpg") #category_id = 2
Category.create(title: "Food & Drink", description: "Grab a bite or a pint", image: "/images/food.jpg") #category_id = 3
Category.create(title: "Nightlife", description: "Take a night out on the town", image: "/images/nightlife.jpg") #category_id = 4
Category.create(title: "Fashion", description: "Hit the best shopping spots in the city", image: "/images/fashion.jpg") #category_id = 5
Category.create(title: "Outdoors", description: "Get some fresh air", image: "/images/outdoors.jpg") #category_id = 6
Category.create(title: "Events", description: "Events around town", image: "/images/events.jpg") #category_id = 7
Category.create(title: "Sports", description: "Root for the home team", image: "/images/sports.jpg") #category_id = 8
Category.create(title: "History", description: "Pay homage to the past", image: "/images/history.jpg") #category_id = 9


#City 1 Austin
  #Host 1
    UserCategory.create(host_id: 1, category_id: 9) #user_category_id = 1
    UserCategory.create(host_id: 1, category_id: 3) #user_category_id = 2
    UserCategory.create(host_id: 1, category_id: 5) #user_category_id = 3
    Tag.create(specialty: "Ancient Greek", category_id: 9) #tag_id = 1
    Tag.create(specialty: "All you can Greek buffet", category_id: 3) #tag_id = 2
    Tag.create(specialty: "Greek Vogue", category_id: 5) #tag_id = 3
    UserTag.create(host_id: 1, tag_id: 1)
    UserTag.create(host_id: 1, tag_id: 2)
    UserTag.create(host_id: 1, tag_id: 3)
  #Host 2
    UserCategory.create(host_id: 2, category_id: 2) #user_category_id = 4
    UserCategory.create(host_id: 2, category_id: 6) #user_category_id = 5
    Tag.create(specialty: "Symphonies", category_id: 2) #tag_id = 4
    Tag.create(specialty: "Concerts", category_id: 2) #tag_id = 5
    Tag.create(specialty: "The Greenbelt", category_id: 6) #tag_id = 6
    Tag.create(specialty: "The Lake", category_id: 6) #tag_id = 7
    Tag.create(specialty: "Cycling Tours", category_id: 6) #tag_id = 8
    UserTag.create(host_id: 2, tag_id: 4)
    UserTag.create(host_id: 2, tag_id: 5)
    UserTag.create(host_id: 2, tag_id: 6)
    UserTag.create(host_id: 2, tag_id: 7)
    UserTag.create(host_id: 2, tag_id: 8)
  #Host 3
    UserCategory.create(host_id: 3, category_id: 2) #user_category_id = 6
    UserCategory.create(host_id: 3, category_id: 3) #user_category_id = 7
    UserCategory.create(host_id: 3, category_id: 4) #user_category_id = 8
    Tag.create(specialty: "Punk Rock", category_id: 2) #tag_id = 9
    Tag.create(specialty: "Metal", category_id: 2) #tag_id = 10
    Tag.create(specialty: "Great American Cuisine", category_id: 3) #tag_id = 11
    Tag.create(specialty: "Highly Populated Bars", category_id: 4) #tag_id = 12
    Tag.create(specialty: "Chill Nightlife", category_id: 4) #tag_id = 13
    UserTag.create(host_id: 3, tag_id: 9)
    UserTag.create(host_id: 3, tag_id: 10)
    UserTag.create(host_id: 3, tag_id: 11)
    UserTag.create(host_id: 3, tag_id: 12)
    UserTag.create(host_id: 3, tag_id: 13)
#City 2 Seattle
  #Host 4
    UserCategory.create(host_id: 4, category_id: 7) #user_category_id = 9
    Tag.create(specialty: "Space Needle Tours", category_id: 7) #tag_id = 14
    Tag.create(specialty: "Pike Place Market", category_id: 7) #tag_id = 15
    Tag.create(specialty: "Pacific Science Center", category_id: 7) #tag_id = 16
    Tag.create(specialty: "Museum of Flight", category_id: 7) #tag_id = 17
    Tag.create(specialty: "Woodland Park Zoo", category_id: 7) #tag_id = 18
    UserTag.create(host_id: 4, tag_id: 14)
    UserTag.create(host_id: 4, tag_id: 15)
    UserTag.create(host_id: 4, tag_id: 16)
    UserTag.create(host_id: 4, tag_id: 17)
    UserTag.create(host_id: 4, tag_id: 18)
  #Host 5
    UserCategory.create(host_id: 5, category_id: 7) #user_category_id = 10
    UserCategory.create(host_id: 5, category_id: 4) #user_category_id = 11
    UserCategory.create(host_id: 5, category_id: 2) #user_category_id = 12
    Tag.create(specialty: "Pacific North West Bars", category_id: 4) #tag_id = 19
    Tag.create(specialty: "Chill Indie Music", category_id: 2) #tag_id = 20
    UserTag.create(host_id: 5, tag_id: 13)
    UserTag.create(host_id: 5, tag_id: 14)
    UserTag.create(host_id: 5, tag_id: 19)
    UserTag.create(host_id: 5, tag_id: 20)
  #Host 6
    UserCategory.create(host_id: 6, category_id: 2) #user_category_id = 13
    UserCategory.create(host_id: 6, category_id: 4) #user_category_id =14
    Tag.create(specialty: "Psychedelic Rock", category_id: 2) #tag_id = 21
    UserTag.create(host_id: 6, tag_id: 19)
    UserTag.create(host_id: 6, tag_id: 20)
    UserTag.create(host_id: 6, tag_id: 9)
    UserTag.create(host_id: 6, tag_id: 21)
    UserTag.create(host_id: 6, tag_id: 13)
    UserTag.create(host_id: 6, tag_id: 11)
