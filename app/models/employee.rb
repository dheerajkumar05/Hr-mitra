class Employee < ApplicationRecord
	has_many :documents
	validates :first_name,:last_name,presence:true
	validates :email,presence:true,uniqueness:true
	validates :city,:pincode,:address,presence:true

	def name
		"#{first_name} #{last_name}".strip
	end

	def full_address
		"#{city} #{pincode} #{address}".strip
	end

	def name_with_email
		"#{name} (#{email})"
	end
end
