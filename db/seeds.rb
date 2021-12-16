# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all

Company.create(name: "La Banque Postale", activity: "financiere",  description:"société de financement banquaire", address:"40 rue des bois 97200 Fort de France", phone: "0596757575", image_url: "banque-postale.jpg")
Company.create(name: "Lockout ", activity: "informatique", description:"société de formation en informatique", address: "50 avenue des champs 97200 Fort de France", phone: "0596908372", image_url: "lockout.jpg")
Company.create(name: "Cdsicount", activity: "vente", description:"société de vente a distance", address: "100 bld charles de Gaulle 97200 Fort de France", phone: "0596363635", image_url: "cdiscount.jpg")
Company.create(name: "Amazon", activity: "vente", description:"société de vente a distance",address: "01 rue de la riviere 97200 Fort de France", phone: "0596010203", image_url: "amazon.jpg")
