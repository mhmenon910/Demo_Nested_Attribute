class AddTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :produt_type_id, :integer
    add_column :products, :properties, :text
  end
end
