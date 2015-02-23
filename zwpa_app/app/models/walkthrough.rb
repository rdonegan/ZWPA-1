class Walkthrough < ActiveRecord::Base
	
	# Relationships
	belongs_to :request

	# Validations
	validates_presence_of :request_id
	validates_numericality_of :square_footage, only_integer: true, greater_than_or_equal_to: 0
	validates_numericality_of :num_floors, only_integer: true, greater_than_or_equal_to: 0
	validates_numericality_of :max_occupancy, only_integer: true, greater_than_or_equal_to: 0

end
