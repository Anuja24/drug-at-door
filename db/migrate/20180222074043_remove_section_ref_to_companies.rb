class RemoveSectionRefToCompanies < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :companies, :section, foreign_key: true
  end
end
