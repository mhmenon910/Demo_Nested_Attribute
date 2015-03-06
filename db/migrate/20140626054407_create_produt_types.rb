class CreateProdutTypes < ActiveRecord::Migration
  def change
    create_table :produt_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
