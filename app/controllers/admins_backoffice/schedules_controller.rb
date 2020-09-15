class AdminsBackoffice::SchedulesController < AdminsBackofficeController
  before_action :set_schedule, only: [:edit, :update, :destroy]
  before_action :set_user_options, only: [:new, :create, :edit, :update]
  before_action :set_course_options, only: [:new, :create, :edit, :update]
  before_action :set_student_options, only: [:new, :create, :edit, :update]
  before_action :verify_time, only: [:create, :update]
  before_action :verify_time_end, only: [:create, :update]
  before_action :verify_day, only: [:create, :update]
  before_action :agenda_validation, only: [:create, :update]
  before_action :time_validation, only: [:create, :update]
  before_action :group_validation, only: [:create]
  before_action :professor_class_time, only: [:create, :update]
  # before_action :student_class_conflict, only: [:create, :update]

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
  # @block &&
  def create
    @schedule = Schedule.new(schedule_params)
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to admins_backoffice_schedules_path, notice: 'Schedule was successfully created.' }
        format.json { render status: :created, location: @schedule }
      else
        format.html { render :new, notice: 'Erro ao cadastrar horário, conferir agenda do professor' }
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
        format.html { render :edit, notice: 'Erro ao cadastrar horário, conferir agenda do professor' }
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
    params.require(:schedule).permit(:user_id, :course_id, :weekday,
                                     :time, :time_end, :group, class_rooms_attributes: [:id, :student_id, :_destroy])
  end

  def verify_time
    case schedule_params[:time]
    when '07:30'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).morning_one
    when '08:20'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).morning_two
    when '09:10'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).morning_three
    when '10:10'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).morning_four
    when '11:00'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).morning_five
    when '13:20'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_one
    when '14:10'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_two
    when '15:00'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_three
    when '16:00'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_four
    when '16:50'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_five
    when '17:40'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_six
    when '18:50'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).evening_one
    when '19:40'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).evening_two
    when '20:30'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).evening_three
    when '21:30'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).evening_four
    when '22:30'
      @aux_time = Agenda.find_by(user_id: schedule_params[:user_id]).evening_five
    end
  end

  def verify_time_end
    case schedule_params[:time_end]
    when '07:30'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).morning_one
    when '08:20'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).morning_two
    when '09:10'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).morning_three
    when '10:10'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).morning_four
    when '11:00'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).morning_five
    when '13:20'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_one
    when '14:10'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_two
    when '15:00'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_three
    when '16:00'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_four
    when '16:50'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_five
    when '17:40'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).afternoon_six
    when '18:50'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).evening_one
    when '19:40'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).evening_two
    when '20:30'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).evening_three
    when '21:30'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).evening_four
    when '22:30'
      @aux_time_end = Agenda.find_by(user_id: schedule_params[:user_id]).evening_five
    end
  end

  def verify_day
    case schedule_params[:weekday]
    when 'Segunda-feira'
      @aux_week = 0
    when 'Terca-feira'
      @aux_week = 1
    when 'Quarta-feira'
      @aux_week = 2
    when 'Quinta-feira'
      @aux_week = 3
    when 'Sexta-feira'
      @aux_week = 4
    when 'Sabado'
      @aux_week = 5
    end
  end

  # @return [FalseClass, TrueClass]
  def agenda_validation
    @block = true
    unless @aux_time.nil?
      @aux_time.each_char do |t|
        @block = false if t == @aux_week.to_s
      end
    end
    unless @aux_time_end.nil?
      @aux_time_end.each_char do |te|
        @block = false if te == @aux_week.to_s
      end
    end
  end

  # @return [FalseClass, TrueClass]
  def time_validation
    @block = false if schedule_params[:time] >= schedule_params[:time_end]
  end

  def group_validation
    schedules = Schedule.where(course_id: schedule_params[:course_id])
    schedules.each do |schedule|
      @block = false if schedule.group == schedule_params[:group]
    end
  end

  def professor_class_time
    schedules = Schedule.where(user_id: schedule_params[:user_id])
    schedules.each do |schedule|
      if schedule.weekday == schedule_params[:weekday]
        unless schedule_params[:time] > schedule.time && schedule.time < schedule_params[:time_end]
          @block = false
        end
        unless schedule_params[:time] > schedule.time_end && schedule.time_end < schedule_params[:time_end]
          @block = false
        end
      end
    end
  end

  def student_class_conflict
    students = schedule_params[:students_id]
    students_with_class = Schedule.where(time: schedule_params[:time], weekday: schedule_params[:weekday])
    students_with_class.each do |swc|
      puts 'TO TESTANDO AQ OOOOOOO' if swc.students.to_s.include? students.to_s
    end
  end

end