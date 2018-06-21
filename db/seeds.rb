# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

max = User.create!({email_address: "max@gmail.com", first_name: "max", last_name:"simonet"})
dave = User.create!({email_address: "dave@gmail.com", first_name: "dave", last_name:"bonowitz"})

french = Language.create!({name: "French", proficiency_average: AVG(Proficiency.find(params[:proficiency_level])) })

Message.create!({sender: max.id, recipient: dave.id, language: french.id, text: "Bonjour Dave"})

Proficiency.create!({user: max.id, language: french.id, proficiency_level: 8}, 
                    {user: dave.id, language: french.id, proficiency_level: 6})

puts "Seeded Database Successfully"
