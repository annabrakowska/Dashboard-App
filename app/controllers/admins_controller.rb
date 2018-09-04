class AdminsController < ApplicationController
    
    def index
       

        @cohorts = Cohort.all 
        @courses = Course.all
        @teachers = Teacher.all
        @students = Student.all

        @courses_img = "https://rensderooij.nl/wp-content/uploads/2017/12/Groen-schoolplein-Hoveniersbedrijf-Rens-de-Rooij-Draagt-bij-aan-de-ontwikkeling-van-het-kind.png"
        @cohorts_img = "https://image.flaticon.com/icons/png/512/446/446804.png"
        @students_img = "http://icons.iconarchive.com/icons/webalys/kameleon.pics/256/Student-3-icon.png"
        @teachers_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlr-Vit8kyBt5IMebWgUe6myqHyo-eBgVYzcjBezJdlOJIY9nX"

        @sections = ["cohorts", "courses", "teachers", "students"]
        @images = [@cohorts_img, @courses_img, @teachers_img, @students_img]
        

    end

end



