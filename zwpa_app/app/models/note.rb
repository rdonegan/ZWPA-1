class Note < ActiveRecord::Base

	#Relationships
	belongs_to :request
	has_attached_file :image, styles: {normal: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	#Validations
	validates_presence_of :request_id #, :description

	#Scopes
	scope :chronological, -> { order('created_at') }
	
	#Methods

	# Use method to check if note is blanking, stop from submitting
	# def documentation_info_present?
	#   	if :description.blank? and :photo.blank?
	#   	  errors.add(:base, "You must include either a description or photo.")
	#   	end
 #  	end
end
