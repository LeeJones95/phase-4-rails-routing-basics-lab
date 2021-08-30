class StudentController < ApplicationController

    def index
        students = Students.all
        render json: students
    end


    def grades
        students = Student.order(grade: :desc)
        render json: students
    end 


    def highest_grades
        students = Students.order(grade: :desc).first
        render json: students
    end

end
