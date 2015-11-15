class CreateOrganisersContacts < ActiveRecord::Migration
  def change
    create_table :organisers_contacts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
