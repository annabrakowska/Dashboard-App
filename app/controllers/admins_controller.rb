class AdminsController < ApplicationController

    def index
        puts current_user.email
        puts "Hello Blah"

        @cohorts = Cohort.all 
        @courses = Course.all
        @teachers = Teacher.all
        @students = Student.all

        @courses_img = "https://cdn4.iconfinder.com/data/icons/online-education-9/500/online-education-study_15-512.png"
        @cohorts_img = "https://higherlogicdownload.s3.amazonaws.com/AISAP/9240e0fb-b3b1-451a-85f4-ae549c79acf1/UploadedImages/Icons/cohort-groups-2016.png"
        @students_img = "https://cdn3.iconfinder.com/data/icons/education-3-2/256/Students-512.png"
        @teachers_img = "https://cdn3.iconfinder.com/data/icons/public-sign-part02/100/__-57-512.png"

        @sections = [@cohorts, @courses, @teachers, @students]
        @images = [@cohorts_img, @courses_img, @teachers_img, @students_img]


    end

end



