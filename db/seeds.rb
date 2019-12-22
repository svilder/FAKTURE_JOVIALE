# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Bill.destroy_all
Client.destroy_all
Companie.destroy_all
Item.destroy_all
BankAccount.destroy_all

user = User.new(email:"yo@yo.com", password:"yoyoyo")
companie = Companie.new(name:"Ubisoft", city:"Montreal")
client = Client.new(first_name:"Bob", last_name:"Poop", email:"bob@poop.com", companie_id:1)
bill = Bill.new(title:"Facture Wagon automne", validated:false, paid:false, sent:false, user_id:1, client_id:1)
