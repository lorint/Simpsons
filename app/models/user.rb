class User < ActiveRecord::Base
  belongs_to :job

  belongs_to :manager, class_name: '::User', inverse_of: :direct_reports, optional: true
  has_many :direct_reports, class_name: '::User', foreign_key: :manager_id,
                            inverse_of: :manager
end # model User
