class CreateProductPucharses < ActiveRecord::Migration
  def change
    create_table :product_pucharses do |t|
      t.references :pucharse, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
