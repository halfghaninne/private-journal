# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shuri = User.create(email: "shuri@wakanda.gov", password: "wakandaforever", password_confirmation: "wakandaforever")
hermione = User.create(email: "hermione@magic.gov", password: "verysafepassword", password_confirmation: "verysafepassword")

shuri.entries.create(title: "Why Wakanda should be a leader in international aid", body: "We can. We should. We will.")
shuri.entries.create(title: "My UN 2018 Global Hackathon experience", body: "It was really cool. Our team won of course.")

hermione.entries.create(title: "Why Muggle education courses are the future of Ministry diplomacy", body: "Muggles rule, bigotry drools.")