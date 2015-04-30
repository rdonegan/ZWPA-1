class User < ActiveRecord::Base
	
	# Adds method to set and authenticate against a Bcrypt password
	has_secure_password

	# Relationships
	has_many :customers


	# Validations
	validates_presence_of :username
	validates_presence_of :password_digest

	# Scopes

	# Constants
	ROLES = [['Administrator', :admin]]

	# Methods
	def role?(authorized_role)
	    return false if role.nil?
	    role.to_sym == authorized_role
    end

	# Used for user authentication via email.
	# May have to changed based on future client needs.
	# Uncomment when working on authentication later.
	def self.authenticate(username,password)
		User.first.try(:authenticate, password)
	end


end
