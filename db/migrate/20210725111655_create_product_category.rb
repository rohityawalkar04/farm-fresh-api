class CreateProductCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |pc|
      pc.string :name
    end
  end
end
