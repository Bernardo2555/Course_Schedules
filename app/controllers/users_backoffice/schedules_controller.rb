class UsersBackoffice::SchedulesController < UsersBackofficeController

  def index
    @schedules = Schedule.all
    @check = false
  end
end
