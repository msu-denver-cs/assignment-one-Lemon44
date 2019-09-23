class CreateCarParts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_parts do |t|
      t.make_id :car
      t.make_id :part

      t.timestamps
    end
  end
end
