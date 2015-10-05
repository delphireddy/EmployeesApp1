json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_no, :birth_date, :first_name, :last_name, :gender, :hire_date
  json.url employee_url(employee, format: :json)
end
