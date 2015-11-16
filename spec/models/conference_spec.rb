# == Schema Information
#
# Table name: conferences
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  date        :datetime
#  place       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  speaker_id  :integer
#  attendee_id :integer
#  sponsor_id  :integer
#

require 'rails_helper'

RSpec.describe Conference, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
