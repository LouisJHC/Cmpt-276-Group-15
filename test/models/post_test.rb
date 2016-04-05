require 'test_helper'


class PostTest < ActiveSupport::TestCase

  test "should be valid" do
    assert @posts.valid?
  end
  
  test "title should be present" do
    @posts.title = " "
    assert_not @posts.valid?
  end
  
  test "contents should be present" do
    @posts.contents = " "
    assert_not @posts.valid?
  end
  

  
end
