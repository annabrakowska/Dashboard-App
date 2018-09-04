class CohortsController < ApplicationController
    
    def index
        @cohorts = Cohort.all
    end
    

    def new 
        @course = Cohort.new
    end

    def create
        @cohort = Cohort.new(cohort_params)
        
        if @cohort.save
            flash[:notice] = "Cohort successfully created"
            redirect_to @cohort
        else
            redirect_to "cohorts/new"
        end
    end

    def show
        
        @cohort = Cohort.find(params[:id])
        @students = Student.where(cohort_id: @cohort.id)

    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy
    end

    private

    def all_cohorts
        @cohorts = Cohort.all
      end

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :teacher_id)
    end


end
