# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

10.times do 
   
    user = "GeneRadciffe1" 
    email = "email1" +"@yahoo.com"
    User.create!(username: user, password: "password", email: email)

    user = "mattRadciffe1" 
    email = "mattemail" +"@yahoo.com"
    User.create!(username: user, password: "password", email: email)

    user = "roseRadciffe1" 
    email = "roseemail" +"@yahoo.com"
    User.create!(username: user, password: "password", email: email)

    user = "edwardRadciffe1" 
    email = "edwardemail" +"@yahoo.com"
    User.create!(username: user, password: "password", email: email)

end