class CreatePartnershipPlans < ActiveRecord::Migration
  def change
    create_table :partnership_plans do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
