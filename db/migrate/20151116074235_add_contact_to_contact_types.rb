class AddContactToContactTypes < ActiveRecord::Migration
  def change
    add_reference :contact_types, :contact, index: true, foreign_key: true
  end
end
