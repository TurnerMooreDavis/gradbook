json.array!(@courses) do |course|
  json.extract! course, :id, :name, :student_id, :teacher_id
  json.url course_url(course, format: :json)
end
