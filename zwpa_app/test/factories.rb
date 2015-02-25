FactoryGirl.define do 

	factory :note do
		description "This is a test decription for this note."
		photo "this will be the filename for the photo"
		association :request
	end

end