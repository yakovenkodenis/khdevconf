class AddContactToContactType < ActiveRecord::Migration
  def change
    add_reference :contacts, :contact_type, index: true
  end
end
