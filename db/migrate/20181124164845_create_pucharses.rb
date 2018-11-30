class CreatePucharses < ActiveRecord::Migration
  def change
    create_table :pucharses do |t|
      t.string :description
      t.boolean :was_bought
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
