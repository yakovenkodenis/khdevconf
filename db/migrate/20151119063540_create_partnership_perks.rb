class CreatePartnershipPerks < ActiveRecord::Migration
  def change
    create_table :partnership_perks do |t|
      t.string :name
      t.text :description
      t.references :partnership_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
