# == Schema Information
#
# Table name: user_types
#
#  id          :integer          not null, primary key
#  type        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class UserType < ActiveRecord::Base
  belongs_to :user

  validates :type, uniqueness: { case_sensitive: false }, presence: true
end
