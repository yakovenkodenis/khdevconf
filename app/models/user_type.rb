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

class UserType < ActiveRecord::Base
  has_one :user
end
