json.extract! employee, :id, :name, :job_title_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
