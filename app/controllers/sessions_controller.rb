class SessionsController < ApplicationController
    def login
      if request.post?
        if Teacher.find_by_email(params[:email])
          teacher = Teacher.find_by_email(params[:email])
          if teacher && teacher.authenticate(params[:password])
            session[:teacher_id] = teacher.id
            redirect_to dashboard_teacher_path, notice: "Successfully logged in."
          elsif Student.find_by_email(params[:email])
            student = Student.find_by_email(params[:email])
            if student && student.authenticate(params[:password])
              session[:student_id] = student.id
              redirect_to dashboard_student_path, notice: "Successfully logged in."
            elsif Parent.find_by_email(params[:email])
              parent = Parent.find_by_email(params[:email])
              if parent && parent.authenticate(params[:password])
                session[:parent_id] = parent.id
                redirect_to dashboard_parent_path, notice: "Successfully logged in."
              else
                redirect_to login_path, notice: "Please Try Again"
              end
            end
          end
        end
      end
    end

    def logout
      session[:teacher_id] = nil
      session[:student_id] = nil
      session[:parent_id] = nil
      redirect_to login_path, notice: "Successfully logged out."
    end
end
