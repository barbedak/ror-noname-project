class Employee < ApplicationRecord
  has_secure_password
  validates_presence_of :name, :login, :job_title
end
