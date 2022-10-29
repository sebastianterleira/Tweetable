puts "Seading - START"

Like.destroy_all
Tweet.destroy_all
User.destroy_all

puts "Seeding custom admin -> admin@gmail.com - supersecret"
admin = User.create(email: "admin@gmail.com", username: "elBossAdmin", name: "admin", password: "supersecret", password_confirmation: "supersecret")
admin.cover.attach(io: File.open('db/image/puño.png'), filename: 'puño.png')

