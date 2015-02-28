require 'test_helper'

class RequestTest < ActiveSupport::TestCase
	should have_many(:walkthroughs)
	should have_many(:notes)
	should have_many(:audits)
	should belong_to(:customer)
end
