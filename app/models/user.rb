class User < ActiveRecord::Base
	has_secure_password
	has_many :clients, class_name: "Users",
                          foreign_key: "trainer_id"
 
  	belongs_to :trainers, class_name: ""
	validates :name, presence: true
	validates :email, presence: true, uniqueness: { case_sensittive: false }
	validates :password, presence: true, confirmation: true, length: {in: 6..20}

	def trainer
		self.role == 'trainer'
	end
end
