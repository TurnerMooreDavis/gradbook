class Student < ActiveRecord::Base
  has_many :assignments
  has_many :classes
end
