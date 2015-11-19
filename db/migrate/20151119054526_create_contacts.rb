class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact
      # t.references :contact_types, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
