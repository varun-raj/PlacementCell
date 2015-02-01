json.array!(@students) do |student|
  json.extract! student, :id, :name, :regno, :dob, :gender, :address, :mobile, :email, :year, :department_id, :tenth, :twelfth, :cgpa
  json.url student_url(student, format: :json)
end
