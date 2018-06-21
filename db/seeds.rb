# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Language.destroy_all

max = User.create!({email_address: "max@gmail.com", first_name: "max", last_name:"simonet"})
dave = User.create!({email_address: "dave@gmail.com", first_name: "dave", last_name:"bonowitz"})

french = Language.create!({name: "French", proficiency_average: 24 })

Message.create!({user_id: max.id, sender: max.id, recipient: dave.id, language_id: french.id, message: "Bonjour Dave"})

max_proficiency = Proficiency.create!({user_id: max.id, language_id: french.id, proficiency_level: 8})
dave_proficiency = Proficiency.create!({user_id: dave.id, language_id: french.id, proficiency_level: 6})

puts "Seeded Database Successfully"
