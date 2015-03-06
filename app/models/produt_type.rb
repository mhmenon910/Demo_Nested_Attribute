class ProdutType < ActiveRecord::Base
  has_many :products
  has_many :fields, class_name: "ProductField"
  accepts_nested_attributes_for :fields, allow_destroy: true
end
