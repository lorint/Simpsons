class Athlete < User
  has_many :attendances
  has_many :interval_sessions, through: :attendances
end
