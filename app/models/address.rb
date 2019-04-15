class Address < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :address_type
  has_many :orders
end
