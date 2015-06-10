json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :email, :password_digest, :name
  json.url teacher_url(teacher, format: :json)
end
