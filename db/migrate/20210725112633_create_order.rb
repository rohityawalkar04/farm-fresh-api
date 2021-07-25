class CreateOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |o|
      o.string :receiver_name
      o.references :product, foreign_key: true
    end
  end
end
