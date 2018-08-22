class StudentsController < ApplicationController

    def index
        @students = Student.all
    end


    def new
        @student=Student.new
    end


    def create
        @student = Student.create(student_params);
        redirect_to new_student_path
    end

    def show
        @student = Student.find(params[:id]) 
    end

    def edit
        @student = Student.find(params[:id]) 
        
    end

    def update
        @student = Student.find(params[:id]) 
        @student.update(student_params) 
        redirect_to  '/students'
    end


    def destroy
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name, :age, :email, :password, :cohort_id)
    end
    
end






