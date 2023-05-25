class IntervalSession < ApplicationRecord
  has_many :attendees, class_name: 'Attendance', foreign_key: :interval_session_id, inverse_of: :interval_session
  has_many :athletes, through: :attendees
end
