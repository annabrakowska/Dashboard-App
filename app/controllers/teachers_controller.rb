class TeachersController < ApplicationController
    

    def index
        @teachers = Teacher.all
    end


    def new
        @teacher=Teacher.new
    end


    def create

        @teacher = Teacher.new(teacher_params)
            if @teacher.save
                flash[:notice] = "Teacher successfully created"
                redirect_to @teacher
            else
                redirect_to "teachers/new"
            end

    end


    def show
        @teacher = Teacher.find(params[:id]) 
    end
       
    def edit
        @teacher = Teacher.find(params[:id]) 
    end

    def update
        
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
        redirect_to '/teachers'
    end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
    end

    def teacher_params
        params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :email, :password, :profile_picture, uploads: [])

    end
    
end



   