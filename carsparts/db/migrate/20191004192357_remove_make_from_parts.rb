class RemoveMakeFromParts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :parts, :make, foreign_key: true
  end
end
