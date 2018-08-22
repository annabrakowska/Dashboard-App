class CoursesController < ApplicationController
    
    def index
        @course = Course.all
    end

    def new 
        @course = Course.new
    end

    def create
        @course = Course.create(course_params)
        redirect_to new_course_path
    end

    def show
        @course = Course.find(params[:id])
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def destroy
    
    end

    def course_params
        params.require(:course).permit(:name, :hours)
    end


end
