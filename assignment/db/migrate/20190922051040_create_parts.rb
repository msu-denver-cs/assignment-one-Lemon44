class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :make_id
      t.integer :product_id

      t.timestamps
    end
  end
end
