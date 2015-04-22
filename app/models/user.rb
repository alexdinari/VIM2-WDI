class User < ActiveRecord::Base
	has_many :clients, class_name: "Users",
                          foreign_key: "trainer_id"
 
  	belongs_to :trainers, class_name: "Employee"
end
