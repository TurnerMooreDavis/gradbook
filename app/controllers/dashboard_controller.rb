class DashboardController < ApplicationController
  before_action :check_teacher, only: [:teacher]
  before_action :check_student, only: [:student]
  before_action :check_parent, only: [:parent]

  def teacher
    @teacher = Teacher.find_by_id(session[:teacher_id])
    @students = Student.all
  end

  def student
    @student = Student.find_by_id(session[:student_id])
  end

  def parent
    @parent = Parent.find_by_id(session[:parent_id])
  end

end
