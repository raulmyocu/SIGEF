class Instructor < ApplicationRecord
  belongs_to :efac, inverse_of: :instructors
  has_one_attached :resume
end
