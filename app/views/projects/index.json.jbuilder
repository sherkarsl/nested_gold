json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :company, :location, :supervisior, :date, :manday, :workingweek, :holiday, :user_id
  json.url project_url(project, format: :json)
end
