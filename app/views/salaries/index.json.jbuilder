json.array!(@salaries) do |salary|
  json.extract! salary, :id, :emp_no, :salary, :from_date, :to_date
  json.url salary_url(salary, format: :json)
end
