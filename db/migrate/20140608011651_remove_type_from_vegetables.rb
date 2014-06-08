class RemoveTypeFromVegetables < ActiveRecord::Migration
  def change
    remove_column :vegetables, :type, :string
  end
end
