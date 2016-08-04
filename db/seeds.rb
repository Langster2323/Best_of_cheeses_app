# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  usernames = ["Socrates",
    "Friedrich Nietzsche",
    "Martin Heidegger",
    "Jean Paul-Sartre",
    "Gadamer",
    "Immanuel Kant",
    "Hegel",
    "John Stuart Mill",
    "Lyotard",
    "Michael Foucalt"
    ]
    name = ["Gouda",
       "Brie",
        "Cheddar",
         "Goat Cheese",
         "Feta",
         "Mozzarella",
         "Cotija",
         "Swiss",
         "Monterey Jack",
         "Parmigiano-Reggiano",
         "Provolone",
         "Gorgonzola",
         "Havarti",
         "Ricotta",
         "Colby-Jack",
         "Emmentaler",
         "Smoke Gouda"
        ]
#
# user.each do |username|
# User.create!(username: username, password_digest: "password")
# Cheese.create!(name: name)
# end

usernames.each do |username|
  User.create!(username: username, password_digest: "password")
  Cheese.create!(name: name)
end
