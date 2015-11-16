# == Schema Information
#
# Table name: user_types
#
#  id          :integer          not null, primary key
#  type        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe UserType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
