json.array!(@titles) do |title|
  json.extract! title, :id, :emp_no, :title, :from_date, :to_date
  json.url title_url(title, format: :json)
end
