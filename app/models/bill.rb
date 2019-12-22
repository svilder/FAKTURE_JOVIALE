class Bill < ApplicationRecord
  belongs_to :user
  Has_many :items
end
