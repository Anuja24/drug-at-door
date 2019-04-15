class Product < ApplicationRecord
  attr_reader :product_form_name
  attr_reader :company_name
  attr_accessor :composition_ids
  belongs_to :section_type
  belongs_to :section
  belongs_to :company
  belongs_to :product_form
  belongs_to :pack
  belongs_to :discount
  belongs_to :available
  belongs_to :prec_require
  belongs_to :unit
  has_many :composition_products
  has_many :compositions, :through => :composition_products
  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  do_not_validate_attachment_file_type :photo
  def product_form_name=(fname)
       @product_form_id = ProductForm.find_by_form_name(fname)
       self.product_form_id =  @product_form_id.id
  end

   def company_name=(cname)
       @company_id = Company.find_by_company_name(cname)
       self.company_id =  @company.id
    end

  # def self.search_product(sections,section_id,section_type_id,company_id)
    # conditions = ''
    # # For Sub Category Filter 
    #  if !sections.nil?
    #   @products = []
    #   sections.each do |section|
    #     products = Product.where(section_id: section)
    #      products.each do |product|
    #       @products << product.id 
    #      end
    #   end
    # end
    # if !sections.nil?
    # if conditions == ''
    #       product_count = 1
    #       @products.each do |product|
    #         if @products.count == 1
    #           conditions += "products.id = #{product}"
    #         else
    #           if @products.count != product_count
    #             conditions += "products.id = #{product} OR "
    #             product_count = product_count + 1
    #           else
    #             conditions += "products.id = #{product}"
    #           end
    #         end
    #       end
    #     else
    #       product_count = 1
    #       @products.each do |product|
    #         if @products.count == 1
    #           conditions += " AND products.id = #{product}"
    #         else
    #           if @products.count != product_count && product_count == 1
    #             conditions += " AND (products.id = #{product} OR "
    #             product_count = product_count + 1
    #             @product_updated_count = @products.count - 1
    #           elsif product_count <= @product_updated_count
    #             conditions += "products.id = #{product} OR "
    #             product_count = product_count + 1
    #           else
    #             conditions += "products.id = #{product}"
    #           end
    #         end
    #       end
    #    end
    # end

    # # For Brand Filter

    #  if !company_id.nil?
    #   @company_products = []
    #   company_id.each do |company|
    #     products = Product.where(company_id: company)
    #      products.each do |product|
    #       @company_products << product.id 
    #      end
    #   end
    # end
    # if !company_id.nil?
    # if conditions == ''
    #       company_count = 1
    #       @company_products.each do |product|
    #         if @company_products.count == 1
    #           conditions += "products.id = #{product}"
    #         else
    #           if @company_products.count != company_count
    #             conditions += "products.id = #{product} OR "
    #             company_count = company_count + 1
    #           else
    #             conditions += "products.id = #{product}"
    #           end
    #         end
    #       end
    #     else
    #       company_count = 1
    #       @company_products.each do |product|
    #         if @company_products.count == 1
    #           conditions += " AND products.id = #{product}"
    #         else
    #           if @company_products.count != company_count && company_count == 1
    #             conditions += " AND (products.id = #{product} OR "
    #             company_count = company_count + 1
    #             @c_product_updated_count = @company_products.count - 1
    #           elsif company_count <= @c_product_updated_count
    #             conditions += "products.id = #{product} OR "
    #             company_count = company_count + 1
    #           else
    #             conditions += "products.id = #{product})"
    #           end
    #         end
    #       end
    #    end
    # end


    # if conditions == ''
    #   if section_id.nil?
    #     Product.where(section_type_id:section_type_id)
    #    else
    #     @section_type_id = Section.find(section_id).section_type_id
    #     Product.where(section_type_id:@section_type_id)
    #   end
      
    # else
    #   Product.where(conditions).uniq
    # end

    # end
end
