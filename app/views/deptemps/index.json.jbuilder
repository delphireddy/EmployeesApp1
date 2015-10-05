json.array!(@deptemps) do |deptemp|
  json.extract! deptemp, :id, :emp_no, :dept_no, :from_date, :to_date
  json.url deptemp_url(deptemp, format: :json)
end
