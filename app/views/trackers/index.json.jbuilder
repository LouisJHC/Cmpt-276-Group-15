json.array!(@trackers) do |tracker|
  json.extract! tracker, :id, :activity, :duration, :effect, :weight, :totolduration, :progress
  json.url tracker_url(tracker, format: :json)
end
