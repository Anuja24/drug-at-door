class Section < ApplicationRecord
  belongs_to :section_type
  has_many :products
  has_many :companies
end
