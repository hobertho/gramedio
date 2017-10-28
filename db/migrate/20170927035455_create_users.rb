class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :front_name
      t.string :last_name
      t.text :address
      t.string :city
      t.string :post_code
      t.string :country
      t.string :state
      t.string :phone
      t.string :home
      t.string :email
      t.boolean :newsletter

      t.timestamps
    end
  end
end
