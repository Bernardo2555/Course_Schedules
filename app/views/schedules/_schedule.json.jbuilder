json.extract! schedule, :id, :professor_id, :course_id, :students, :weekday, :time, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
