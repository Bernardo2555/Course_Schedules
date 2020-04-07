json.extract! course, :id, :code, :description, :ideal_year, :created_at, :updated_at
json.url course_url(course, format: :json)
