class CreateSponsorshipPlans < ActiveRecord::Migration
  def change
    create_table :sponsorship_plans do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end