class Speech < ActiveRecord::Base
  has_one :speaker, class_name: 'User',
                    foreign_key: 'speaker_id', dependent: :destroy
  belongs_to :timetable
end
