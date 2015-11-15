class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.integer :speaker_id
      t.string :name
      t.text :description
      t.time :speech_start
      t.time :speech_finish
      t.time :qa_start
      t.time :qa_finish

      t.timestamps null: false
    end
  end
end
