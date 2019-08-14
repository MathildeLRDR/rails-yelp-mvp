class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
