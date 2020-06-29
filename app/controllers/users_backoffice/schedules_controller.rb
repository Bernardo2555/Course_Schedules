class UsersBackoffice::SchedulesController < UsersBackofficeController

  def index
    @schedules = Schedule.all
  end
end
