class Brew < ApplicationRecord
  belongs_to :product
  belongs_to :equipment
end
