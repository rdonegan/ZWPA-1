class Waste < ActiveRecord::Base

	#Relationships
	belongs_to :audit


	#Validations
	validates_presence_of :material_type, :audit_id
	validates_numericality_of :weight

	#Scope
	scope :chronological, -> { order('created_at') }


end
