class Partner < User
  has_and_belongs_to_many :conferences
end
