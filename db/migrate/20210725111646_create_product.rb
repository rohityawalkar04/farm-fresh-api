class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |p|
      p.string :name
      p.integer :price
    end
  end
end
