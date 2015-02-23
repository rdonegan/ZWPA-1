class Request < ActiveRecord::Base
	# Relationships
	belongs_to :customer
	has_many :walkthroughs, :notes, :audits

	# Validations
	validates_presence_of :customer_id

	#scopes
	scope :chronological, -> { order('created_at') }


end
