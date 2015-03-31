class Waste < ActiveRecord::Base

	#Relationships
	belongs_to :audit


	#Validations
	validates_presence_of :material_type
	validates_numericality_of :weight

	#Scope
	scope :chronological, -> { order('created_at') }


	def self.to_csv(wastes)
		CSV.generate do |csv|
			csv << column_names
			wastes.each do |waste|
				csv << waste.attributes.values_at(*column_names)

			end
		end
	end


end
