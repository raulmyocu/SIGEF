class Instructor < ApplicationRecord
  belongs_to :efac, inverse_of: :instructors
end
