class UserJob < ApplicationRecord
  serialize :users, Array
  serialize :jobs, Array 
  belongs_to :user
  belongs_to :job
  
  belongs_to :result
  belongs_to :requirement
end
