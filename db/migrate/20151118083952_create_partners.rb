class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :company_name

      t.timestamps null: false
    end
  end
end
