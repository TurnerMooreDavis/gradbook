class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def check_teacher
      if Teacher.find_by_id(session[:teacher_id])
        return true
      else
        redirect_to sessions_login_path, notice: "Please Logout then Login as Teacher"
      end
    end
    def check_parent
      if Parent.find_by_id(session[:parent_id])
        return true
      else
        redirect_to sessions_login_path, notice: "Please Logout then Login as Parent"
      end
    end
    def check_student
      if Student.find_by_id(session[:student_id])
        return true
      else
        redirect_to sessions_login_path, notice: "Please Logout then Login as Student"
      end
    end
end
