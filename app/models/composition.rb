class Composition < ApplicationRecord
	has_many :composition_products
	has_many :products, :through => :composition_products
end
