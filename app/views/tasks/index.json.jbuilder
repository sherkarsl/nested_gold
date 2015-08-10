json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :startdate, :enddate, :toatalmandays, :project_category_id
  json.url task_url(task, format: :json)
end
