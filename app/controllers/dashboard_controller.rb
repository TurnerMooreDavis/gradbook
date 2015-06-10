class DashboardController < ApplicationController
  before_action :check_teacher, only: [:teacher]
  before_action :check_student, only: [:student]
  before_action :check_parent, only: [:parent]

  def teacher
  end

  def student
  end

  def parent
  end

end
