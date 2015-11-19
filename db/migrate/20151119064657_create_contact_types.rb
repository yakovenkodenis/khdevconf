class CreateContactTypes < ActiveRecord::Migration
  def change
    create_table :contact_types do |t|
      t.string :name
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
