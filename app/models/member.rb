class Member < ActiveRecord::Base
	has_many :vehicles, dependent: :destroy
end
