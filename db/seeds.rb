# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(name: "La banque postale", activity: "financiere",  descrtiption:"société de financement banquaire", adresse:"40 rue des bois 97200 Fort de France" telephone: "0596757575")
Company.create(name: "lockout ", activity: "informatique", descrtiption:"société de formation en informatique", adresse: "50 avenue des champs 97200 Fort de France" telephone: "0596908372" )
Company.create(name: "cdsicount", activity: "vente", descrtiption:"société de vente a distance", adresse: "100 bld charles de Gaulle 97200 Fort de France" telephone: "0596363635")
Company.create(name: "amazon", activity: "vente", descrtiption:"société de vente a distance",adresse: "01 rue de la riviere 97200 Fort de France" telephone: "0596010203" )
