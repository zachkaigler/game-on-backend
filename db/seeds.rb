# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying old data!"

User.destroy_all
Game.destroy_all
Interest.destroy_all
Group.destroy_all
Membership.destroy_all

puts "Creating users!"

u1 = User.create(
    username: "kaigz",
    password: "123",
    email: "test@gmail.com",
    bio: "Just your typical nerd tryna get some games in. Mainly play MTG (commander) but always down to blunder my way through a game of chess. Park Slope area. Hit me up!",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/40026881_10212217107332599_2292497308874440704_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=tJaj7n93SEcAX-PQrjB&_nc_ht=scontent-lga3-1.xx&oh=010aed7137208291744a303db5411e41&oe=60E688D7"
)
u2 = User.create(
    username: "ali",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/71237788_10156282394056681_8903886367646285824_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=174925&_nc_ohc=Q_FL5Nfr0OkAX-4YODw&_nc_ht=scontent-lga3-1.xx&oh=25c1e8086616ddd252fa842052ef3237&oe=60E571FB"
)
u3 = User.create(
    username: "solada",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.18169-9/167535_830743755905_5871879_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=174925&_nc_ohc=NnlFFICY7xMAX_GGCAf&_nc_ht=scontent-lga3-1.xx&oh=9b9e6c7315444384d072ba9c4048b2f9&oe=60E4BB95"
)
u4 = User.create(
    username: "jennytolls",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.18172-8/12967309_10154178337494903_4327191474022520447_o.jpg?_nc_cat=111&ccb=1-3&_nc_sid=174925&_nc_ohc=0rHATi0dpv4AX8Cwrzw&_nc_ht=scontent-lga3-1.xx&oh=536bd2068af3f3fd570297bd5583977b&oe=60E74306"
)
u6 = User.create(
    username: "daves",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.6435-9/33923791_10102837622673455_5051059557900484608_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_ohc=tWRk-KWtlRAAX_zvGVv&_nc_ht=scontent-lga3-1.xx&oh=3e49426d904ef5b4d30203734881a277&oe=60E72A1A"
)
u7 = User.create(
    username: "ron",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.18172-8/257574_780314995575_6724098_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=cdbe9c&_nc_ohc=4J8rp-lME_IAX-wsJxZ&_nc_ht=scontent-lga3-1.xx&oh=7e3d77289efed51160276069f5316151&oe=60E6B621"
)
u8 = User.create(
    username: "dewitness",
    password: "123",
    email: "test@gmail.com",
    bio: "test bio",
    location: "Brooklyn, New York",
    profile_pic: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.18169-9/19895086_10213259306574712_6967075842872156924_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_ohc=qWjtCm0bmgwAX9PFk0D&_nc_ht=scontent-lga3-1.xx&oh=0b3c40db1e17828d5b2a75ef06aa1d92&oe=60E6D310"
)

puts "Creating games!"

game1 = Game.create(
    name: "Backgammon"
)
game2 = Game.create(
    name: "Board Games (Misc)"
)
game3 = Game.create(
    name: "Chess"
)
game4 = Game.create(
    name: "Dungeons & Dragons"
)
game5 = Game.create(
    name: "Flesh and Blood TCG"
)
game6 = Game.create(
    name: "Gloomhaven"
)
game7 = Game.create(
    name: "Go"
)
game8 = Game.create(
    name: "Magic the Gathering"
)
game9 = Game.create(
    name: "Mortal Kombat 9"
)
game10 = Game.create(
    name: "Pathfinder"
)
game11 = Game.create(
    name: "Pokemon TCG"
)
game12 = Game.create(
    name: "Risk"
)
game13 = Game.create(
    name: "Settlers of Catan"
)
game14 = Game.create(
    name: "Street Fighter 2"
)
game15 = Game.create(
    name: "Super Smash Bros. Melee"
)
game16 = Game.create(
    name: "Super Smash Bros. Ultimate"
)
game17 = Game.create(
    name: "Warhammer 40K"
)
game18 = Game.create(
    name: "Yu-Gi-Oh!"
)

puts "Creating interests!"

u1_interest_1 = Interest.create(
    user_id: u1.id,
    game_id: game8.id
)
u1_interest_2 = Interest.create(
    user_id: u1.id,
    game_id: game3.id
)
u1_interest_2 = Interest.create(
    user_id: u1.id,
    game_id: game4.id
)
u2_interest_1 = Interest.create(
    user_id: u2.id,
    game_id: game8.id
)
u2_interest_2 = Interest.create(
    user_id: u2.id,
    game_id: game10.id
)
u2_interest_3 = Interest.create(
    user_id: u2.id,
    game_id: game2.id
)
u3_interest_1 = Interest.create(
    user_id: u3.id,
    game_id: game8.id
)
u3_interest_2 = Interest.create(
    user_id: u3.id,
    game_id: game18.id
)
u3_interest_3 = Interest.create(
    user_id: u3.id,
    game_id: game15.id
)
u4_interest_1 = Interest.create(
    user_id: u4.id,
    game_id: game8.id
)
u4_interest_2 = Interest.create(
    user_id: u4.id,
    game_id: game6.id
)
u4_interest_3 = Interest.create(
    user_id: u4.id,
    game_id: game9.id
)
u6_interest_1 = Interest.create(
    user_id: u6.id,
    game_id: game8.id
)
u6_interest_2 = Interest.create(
    user_id: u6.id,
    game_id: game17.id
)
u6_interest_3 = Interest.create(
    user_id: u6.id,
    game_id: game13.id
)
u7_interest_1 = Interest.create(
    user_id: u7.id,
    game_id: game8.id
)
u7_interest_2 = Interest.create(
    user_id: u7.id,
    game_id: game6.id
)
u7_interest_3 = Interest.create(
    user_id: u7.id,
    game_id: game1.id
)
u8_interest_1 = Interest.create(
    user_id: u8.id,
    game_id: game8.id
)
u8_interest_2 = Interest.create(
    user_id: u8.id,
    game_id: game4.id
)
u8_interest_3 = Interest.create(
    user_id: u8.id,
    game_id: game10.id
)

puts "Creating groups!"

group1 = Group.create(
    group_name: "Park Slope Commander Night",
    group_about: "Just a buncha' nerds playing some EDH! Usually get together Wednesdays in PS. Looking for new friends!",
    group_location: "Brooklyn, NY",
    group_time: "Fridays, 8PM",
    open: true,
    game_id: game8.id,
    user_id: u1.id,
    group_image: "https://i.imgur.com/ToURW4C.png"
)
group2 = Group.create(
    group_name: "Gowanus Chess Club",
    group_about: "All skill levels welcome!",
    group_location: "Brooklyn, NY",
    group_time: "Wednesdays, 8PM",
    open: true,
    game_id: game3.id,
    user_id: u2.id,
    group_image: "https://i.imgur.com/na1GmFQ.png"
)
group3 = Group.create(
    group_name: "New Campaign in BK",
    group_about: "DM here looking to find players for a new campaign. Please be chill!",
    group_location: "Brooklyn, NY",
    group_time: "Saturdays, 2PM",
    open: true,
    game_id: game4.id,
    user_id: u3.id,
    group_image: "https://i.imgur.com/4CG2RuN.png"
)
group4 = Group.create(
    group_name: "Modern Mondays",
    group_about: "Modern on Mondays! Prizes! Request to join for more info!",
    group_location: "Brooklyn, NY",
    group_time: "Mondays, 2PM",
    open: true,
    game_id: game8.id,
    user_id: u4.id,
    group_image: "https://i.imgur.com/dG2QGAA.png"
)
group5 = Group.create(
    group_name: "Catan for Blood",
    group_about: "High stakes weekly grudge matches",
    group_location: "Manhattan, NY",
    group_time: "Sundays, 4PM",
    open: false,
    game_id: game13.id,
    user_id: u3.id,
    group_image: "https://i.imgur.com/xK1jjGo.png"
)

puts "Creating memberships!"

m1 = Membership.create(
    user_id: u1.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m2 = Membership.create(
    user_id: u2.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m3 = Membership.create(
    user_id: u3.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m4 = Membership.create(
    user_id: u4.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m6 = Membership.create(
    user_id: u6.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m7 = Membership.create(
    user_id: u7.id,
    group_id: group1.id,
    accepted: true,
    read: true
)

m8 = Membership.create(
    user_id: u1.id,
    group_id: group2.id,
    accepted: true,
    read: true
)

puts "Wow, it worked!"