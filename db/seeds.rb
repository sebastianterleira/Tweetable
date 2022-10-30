puts "Seading - START"

Like.destroy_all
Tweet.destroy_all
User.destroy_all

puts "Seeding - Users"

tanus = User.create(email: "tanus@gmail.com", username: "tanus", name: "The Great Tanus", password: "tanus123", password_confirmation: "tanus12", role: 1)
tanus.avatar.attach(io: File.open('db/image/tanus.png'), filename: 'tanus.png')

pluto = User.create(email: "pluto@gmail.com", username: "dogfire", name: "House on Fire", password: "dog123", password_confirmation: "dog123", role: 1)
pluto.avatar.attach(io: File.open('db/image/pluto.png'), filename: 'pluto.png')

goku = User.create(email: "goku@gmail.com", username: "goku2022", name: "Son Goku", password: "goku123", password_confirmation: "goku123", role: 1)
goku.avatar.attach(io: File.open('db/image/Goku.png'), filename: 'Goku.png')

nigga = User.create(email: "nigga@gmail.com", username: "drRealNeil", name: "The Real Neil", password: "nigga123", password_confirmation: "nigga123", role: 1)
nigga.avatar.attach(io: File.open('db/image/nigga.png'), filename: 'nigga.png')

mrD = User.create(email: "Diego@gmail.com", username: "Mr. D", name: "Diego Torres", password: "diego123", password_confirmation: "diego123", role: 1)
mrD.avatar.attach(io: File.open('db/image/MrD.png'), filename: 'MrD.png')

thefist = User.create(email: "Thefist@gmail.com", username: "thefist", name: "The Fist", password: "thefist123", password_confirmation: "thefist123", role: 1)
thefist.avatar.attach(io: File.open('db/image/Thefist.png'), filename: "Thefist")

puts "Seeding custom admin = admin@gmail.com - supersecret"

admin = User.create(email: "admin@gmail.com", username: "elAdmin", name: "admin", password: "supersecret", password_confirmation: "supersecret")
admin.avatar.attach(io: File.open('db/image/Hackerman.png'), filename: 'Hackerman.png')

puts "Seeding - Tweets"

Tweet.create(body: "The gems of infinity will be mine alone, and I, the mariachi tanus, will finish off the wanderers", user_id: 1)

Tweet.create(body: "This is fine, everything is fine.", user_id: 2)

Tweet.create(body: "Even a low class warrior can surpass an elite. With enough hard work.", user_id: 3)

Tweet.create(body: "For me, I am driven by two main philosophies: know more today about the world than I knew yesterday and lessen the suffering of others.", user_id: 4)

Tweet.create(body: "Everyone share some kind of ‘quote’, should I as well?", user_id: 5)

Tweet.create(body: "I would rather be a brainless monkey than a heartless monster.", user_id: 3, replied_to_id: 1)

Tweet.create(body: "When you want to respond and don't know how.", user_id: 6, replied_to_id: 1)

Tweet.create(body: "Let’s sit and talk about it.", user_id: 5, replied_to_id: 1)

Tweet.create(body: "Cuidadito Mike Wazowski cuidadito...", user_id: 7, replied_to_id: 5)

Tweet.create(body: "Sullivan deja a la niña ahora!!", user_id: 7, replied_to_id: 5)

puts "Seeding - Finish"