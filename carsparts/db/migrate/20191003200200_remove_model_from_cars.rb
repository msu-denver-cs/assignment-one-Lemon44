class RemoveModelFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :model, :string
  end
end
