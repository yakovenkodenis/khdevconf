class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :username
      t.string :company_name
      t.text :about

      t.timestamps null: false
    end
  end
end
