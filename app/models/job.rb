class Job < ApplicationRecord
	has_many :user_jobs
	def to_s 
		self.job_name
	end
end
