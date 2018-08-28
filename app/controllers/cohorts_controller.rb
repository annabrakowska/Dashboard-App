class CohortsController < ApplicationController
    
    def index
        @cohorts = Cohort.all
    end

    def new 
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.new(cohort_params)
        if @cohort.save
          redirect_to @cohort
        else
          render "new"
        end
    end

    def show
        @cohort = Cohort.find(params[:id])
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
    
    end

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :teacher_id)
    end


end
