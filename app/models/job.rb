class Job < ActiveRecord::Base
  has_many :users
  accepts_nested_attributes_for :users
end # model Job
