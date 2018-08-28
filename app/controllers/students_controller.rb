class StudentsController < ApplicationController

    def index
        @students = Student.all
    end


    def new
        @student=Student.new
    end


    def create

        @student = Student.new(student_params)
        if @student.save
          redirect_to @student
        else
          render "new"
        end
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






