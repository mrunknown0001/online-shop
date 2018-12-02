class User < ApplicationRecord
	# has_secure_password

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password_digest, presence: true
end
