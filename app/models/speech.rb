# == Schema Information
#
# Table name: speeches
#
#  id            :integer          not null, primary key
#  speaker_id    :integer
#  name          :string
#  description   :text
#  speech_start  :time
#  speech_finish :time
#  qa_start      :time
#  qa_finish     :time
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  timetable_id  :integer
#

class Speech < ActiveRecord::Base
  belongs_to :speaker, class_name: 'User',
                       foreign_key: 'speaker_id', dependent: :destroy
  belongs_to :timetable

  validates :speaker, :name, :description, :speech_start, :speech_finish,
            :qa_start, :qa_finish, presence: true
end
