class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |u|
      u.string :name
      u.string :email
      u.string :mobile_number
      u.string :password
      u.text :address
      u.timestamps
    end
  end
end
