class Series < ApplicationRecord
  has_many :product, dependent: :destroy
  accepts_nested_attributes_for :product
end
