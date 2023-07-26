json.extract! student, :id, :First_name, :last_name, :email,:city,:country, :created_at, :updated_at
json.url student_url(student, format: :json)
