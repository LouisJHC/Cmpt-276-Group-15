require 'test_helper'

class TrackerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @trackers = Tracker.new(activity: "running", duration: 1.5, effect: "tired", weight: 60, totolduration: 1.5, progress: "good")
  end
  
  test "should be valid" do
    assert @trackers.valid?
  end
  
  test "activity should be present" do
    @trackers.activity = " "
    assert_not @trackers.valid?
  end
  
  test "duration should be present" do
    @trackers.duration = " "
    assert_not @trackers.valid?
  end
  
  test "effect should be present" do
    @trackers.effect = " "
    assert_not @trackers.valid?
  end
  test "weight should be present" do
    @trackers.weight = " "
    assert_not @trackers.valid?
  end
  test "totalduration should be present" do
    @trackers.totolduration = " "
    assert_not @trackers.valid?
  end
  test "progress should be present" do
    @trackers.progress = " "
    assert_not @trackers.valid?
  end
  
end
