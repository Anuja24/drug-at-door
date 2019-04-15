class SectionType < ApplicationRecord
	has_many :products
	has_many :sections
end
