# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Application.destroy_all
Company.destroy_all
User.destroy_all



bp = Company.create(name: "La Banque Postale", activity: "Finance",  description:"Société de financement banquaire", address:"40 rue Simon Bolivar, 97200 Fort-de-France, Martinique", phone: "0596757575", image_url: "banque-postale.jpg")
lock = Company.create(name: "Lockout ", activity: "Informatique", description:"Société de formation en informatique", address: "50 rue Tannerie, 97200 Fort-de-France, Martinique", phone: "0596908372", image_url: "lockout.jpg")
cd = Company.create(name: "Cdiscount", activity: "Vente", description:"Société de vente à prix cassés", address: "114 Boulevard Pasteur, 97200 Fort-de-France, Martinique", phone: "0596363635", image_url: "cdiscount.jpg")
ama = Company.create(name: "Amazon", activity: "Vente", description:"Société de vente a distance",address: "1 Zone Indutsrielle La Lézarde, 97232 Le Lamentin, Martinique", phone: "0596010203", image_url: "amazon.jpg")
edf = Company.create(name: "EDF", activity: "Energies", description:"Fournisseur d'énergies",address: "Avenue Victor Lamon, 97200 Fort-de-France, Martinique", phone: "05962424234", image_url: "edf.jpg")
se = Company.create(name: "Snack Elizé", activity: "Restauration", description:"Restaurant de Burgers Antillais",address: "Route de Balata, 97200 Fort-de-France, Martinique", phone: "0596123456", image_url: "snack.jpg")

sylvie = User.create(username: "Sylvie", email: "sylvie@gmail.com", password: "123456")
marina = User.create(username: "Marina", email: "marina@gmail.com", password: "123456")
edwina = User.create(username: "Edwina", email: "edwina@gmail.com", password: "123456")

Review.create(topic: "Temps de pause", comment: "Pas bien respectés", stars: 1, company: bp, user: marina)
Review.create(topic: "Parité", comment: "Les Hommes gagnent plus que les femmes", stars: 2, company: bp, user: marina)
Review.create(topic: "Congés Maternité Prolongés", comment: "Ils m'ont été refusés", stars: 1, company: bp, user: sylvie)

Review.create(topic: "Diversité", comment: "Tout le monde est accepté", stars: 5, company: se, user: edwina)
Review.create(topic: "Travail à distance", comment: "Possible 3 jours sur 5", stars: 4, company: se, user: edwina)

Review.create(topic: "Progression", comment: "J'ai eu un promotion rapidement", stars: 4, company: edf, user: marina)
Review.create(topic: "Temps de pause", comment: "Ils sont respectés", stars: 3, company: edf, user: marina)
Review.create(topic: "Salaires", comment: "Les salaires sont moyens", stars: 3, company: edf, user: edwina)

Review.create(topic: "Progression", comment: "Les opportunités d'avancement sont possible", stars: 3, company: lock, user: sylvie)

Review.create(topic: "Temps de pause", comment: "Moyennement respectés", stars: 3, company: cd, user: marina)
Review.create(topic: "Salaires", comment: "Pas très avantageux", stars: 2, company: cd, user: edwina)

Review.create(topic: "Progression", comment: "Les opportunités de carrière sont bonnes", stars: 4, company: ama, user: sylvie)
Review.create(topic: "Parité", comment: "Les femmes gagnent autant que les hommes", stars: 5, company: ama, user: marina)
Review.create(topic: "Emplois du temps", comment: "Très Flexibles", stars: 4, company: ama, user: edwina)


