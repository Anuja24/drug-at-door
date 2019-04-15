class Company < ApplicationRecord
  belongs_to :section
  has_many :products
end
