class AddReferenceToContactTypes < ActiveRecord::Migration
  def change
    add_reference :contacts, :contact_type, index: true, foreign_key: true
  end
end
