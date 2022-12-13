json.extract! user, :id, :name, :nickname, :password_digest, :admin_rule, :employee_id, :created_at, :updated_at
json.url user_url(user, format: :json)
