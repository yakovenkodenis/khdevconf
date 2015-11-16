# == Schema Information
#
# Table name: timetables
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  conference_id :integer
#

require 'rails_helper'

RSpec.describe Timetable, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
