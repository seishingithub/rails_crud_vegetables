class AddDetailsToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :vegetable_type, :string
  end
end
