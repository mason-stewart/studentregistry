class StudentsController < RocketPants::Base

    version 1

    def index
      # expose Student.paginate(:page => params[:page])
      expose Student.all
    end

    def show
      expose Student.find(params[:id])
    end

    def create
      @student = Student.new(params[:student])
      if @student.save
        expose @student
      end
   end

end
