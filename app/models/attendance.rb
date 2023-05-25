class Attendance < ApplicationRecord
  belongs_to :athlete
  belongs_to :interval_session, inverse_of: :attendees
end
