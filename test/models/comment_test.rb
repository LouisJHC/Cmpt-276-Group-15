require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should be valid" do
    assert @comments.valid?
  end
  
  test "contents should be present" do
    @comments.content = " "
    assert_not @comments.valid?
  end
  

  

  
end
