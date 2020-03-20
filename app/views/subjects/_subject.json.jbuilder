json.extract! subject, :id, :description, :code, :professor, :student, :schedule, :ideal_year, :created_at, :updated_at
json.url subject_url(subject, format: :json)
