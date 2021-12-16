class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company
  validates :topic, presence: true
  validates :comment, presence: true
  validates :stars, presence: true
  validates :stars, numericality: { only_integer: true }
  validates :stars, format: { with: /\A[0-5]\z/,
    message: "votre note doit être entre 0 et 5." }
end
