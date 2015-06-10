class Course < ActiveRecord::Base
  has_many :assignments
  belongs_to :student
  belongs_to :teacher
end
