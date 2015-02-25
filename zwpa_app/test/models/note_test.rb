require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  should belong_to(:request)
  should validate_presence_of(:request_id)

  # test scope
  # TO DO: use factory_girl_rails to test this

end
