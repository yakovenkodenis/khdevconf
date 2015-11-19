class Speaker < User
  has_and_belongs_to_many :conferences
  has_many :speeches
end
