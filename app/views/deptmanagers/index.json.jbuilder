json.array!(@deptmanagers) do |deptmanager|
  json.extract! deptmanager, :id, :dept_no, :emp_no, :from_date, :to_date
  json.url deptmanager_url(deptmanager, format: :json)
end
