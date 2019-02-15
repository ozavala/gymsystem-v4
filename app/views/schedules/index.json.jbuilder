json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :name, :start_time, :end_time
  json.url schedule_url(schedule, format: :json)
end
