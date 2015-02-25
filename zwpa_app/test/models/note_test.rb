require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  should belong_to(:request)
  should validate_presence_of(:request_id)

  # test scope
end
