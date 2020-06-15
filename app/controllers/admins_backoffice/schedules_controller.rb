class AdminsBackoffice::SchedulesController < AdminsBackofficeController
  before_action :set_schedule, only: [:edit, :update, :destroy]
  before_action :set_user_options, only: [:new, :create, :edit, :update]
  before_action :set_course_options, only: [:new, :create, :edit, :update]
  before_action :set_student_options, only: [:new, :create, :edit, :update]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    (params[:students] || []).each do |student|
      unless student.empty?
        @schedule.students.build(students: student)
      end
    end

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to admins_backoffice_schedules_path, notice: 'Schedule was successfully created.' }
        format.json { render status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to admins_backoffice_schedules_path, notice: 'Schedule was successfully updated.' }
        format.json { render status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to admins_backoffice_schedules_path, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user_options
    @user_options = User.all.pluck(:description, :id)
  end

  def set_course_options
    @course_options = Course.all.pluck(:description, :code_c)
  end

  def set_student_options
    @student_options = Student.all.pluck(:description, :ar)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def schedule_params
    params.require(:schedule).permit(:user_id, :course_id, :students, :weekday,
                                     :time, :time_end, :group)
  end
end
