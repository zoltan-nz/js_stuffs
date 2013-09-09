json.array!(@backoffice_tasks) do |backoffice_task|
  json.extract! backoffice_task, :description, :done
  json.url backoffice_task_url(backoffice_task, format: :json)
end
