class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.string :place

      t.timestamps null: false
    end
  end
end
