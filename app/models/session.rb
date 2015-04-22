class Session < ActiveRecord::Base
	belongs_to :calendar
	has_many :users
end
