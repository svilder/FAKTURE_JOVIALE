class Client < ApplicationRecord
  has_many :bills
  belongs_to :companie
end
