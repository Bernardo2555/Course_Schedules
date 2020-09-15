json.extract! schedule, :id, :user_id, :course_id, :students_id, :weekday, :time, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
