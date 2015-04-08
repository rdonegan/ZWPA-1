class Waste < ActiveRecord::Base

	#Relationships
	belongs_to :audit


	#Validations
	validates_presence_of :material_type
	validates_numericality_of :weight

	#Scope
	scope :chronological, -> { order('created_at') }


	def self.to_csv(wastes, options={})
		CSV.generate(options) do |csv|
			columns = %w(material_type weight origin)
			#csv << column_names
			csv << columns
			wastes.each do |waste|
				csv << waste.attributes.values_at(*columns)

			end
		end
	end


end
