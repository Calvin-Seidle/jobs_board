class User < ApplicationRecord
	has_many :user_jobs
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    def to_s 
    	self.name
    end     

end
