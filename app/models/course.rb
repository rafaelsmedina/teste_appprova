class Course < ApplicationRecord
  belongs_to :institution
  has_many :students
end
