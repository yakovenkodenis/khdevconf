class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :about
      t.string :username
      t.boolean :subscription
      t.string :company_name

      t.timestamps null: false
    end
  end
end
