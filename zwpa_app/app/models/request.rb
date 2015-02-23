class Request < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	has_many :walkthroughs 
	has_many :notes
	has_many :audits

	# Validations
	validates_presence_of :request_id, customer_id:


end
