# email:string
# password_digest:string
#
# password:string virtual
# password:confirmation:string virtuel

class User < ApplicationRecord
	has_secure_password

	validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end