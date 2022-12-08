class Product < ApplicationRecord
  belongs_to :series
  has_many :brew
end
