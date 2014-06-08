class CreateVegetable < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :type
      t.string :color
    end
  end
end
