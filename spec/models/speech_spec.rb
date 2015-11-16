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
#

require 'rails_helper'

RSpec.describe Speech, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
