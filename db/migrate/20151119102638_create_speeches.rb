class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.string :name
      t.text :description
      t.time :speech_start
      t.time :speech_finish
      t.time :qa_start
      t.time :qa_finish
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
