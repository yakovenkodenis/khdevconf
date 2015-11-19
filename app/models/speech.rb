class Speech < ActiveRecord::Base
  belongs_to :speaker, class_name: 'User'
end
