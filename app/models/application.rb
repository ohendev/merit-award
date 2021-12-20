class Application < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_one_attached :cv
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :cv, presence: true
end
