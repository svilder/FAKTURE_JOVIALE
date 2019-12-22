class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :client
  has_many :items
end
bill = Bill.new(title:"Facture Wagon automne", validated:false, paid:false, sent:false


  il faut rajouter les foreign key dans la db avant (bill)
