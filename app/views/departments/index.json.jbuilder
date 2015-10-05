json.array!(@departments) do |department|
  json.extract! department, :id, :dept_no, :dept_name
  json.url department_url(department, format: :json)
end
