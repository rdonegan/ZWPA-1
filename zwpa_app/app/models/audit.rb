class Audit < ActiveRecord::Base
	# Relationships
	belongs_to :request
	has_many :wastes

	#Validations
	# validates_presence_of :request_id, 


end
