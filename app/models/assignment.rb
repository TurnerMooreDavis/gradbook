class Assignment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  def percent_of_final
    self.percent_of_total*self.grade/100
  end


end
