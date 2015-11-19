class Partner < User
  has_and_belongs_to_many :conferences
  has_one :partnership_plan
end
