class StudentsController < ApplicationController
    def index
        students_list = Student.all
        render json: students_list
    end
    
    def grades
        student_list_by_grades = Student.order(grades: :desc)
        render json: student_list_by_grades
    end
end
