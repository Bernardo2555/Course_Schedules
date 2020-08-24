class UsersBackoffice::AgendasController < UsersBackofficeController
  before_action :set_agenda, only: [:edit, :update]

  # GET /agendas
  # GET /agendas.json
  def index
    @agendas = Agenda.find_by('user_id = ?', current_user.id)
  end

  # GET /agendas/1/edit
  def edit
  end

  # PATCH/PUT /agendas/1
  # PATCH/PUT /agendas/1.json
  def update
    respond_to do |format|
      if @agenda.update(agenda_params)
        format.html { redirect_to users_backoffice_agendas_path, notice: 'Agenda was successfully updated.' }
        format.json { render status: :ok, location: @agenda }
      else
        format.html { render :edit }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_agenda
    @agenda = Agenda.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def agenda_params
    params.require(:agenda).permit(:user_id, morning_one: [], morning_two: [],
                                   morning_three: [], morning_four: [], morning_five: [],
                                   afternoon_one: [], afternoon_two: [], afternoon_three: [],
                                   afternoon_four: [], afternoon_five: [], afternoon_six: [],
                                   evening_one: [], evening_two: [], evening_three: [],
                                   evening_four: [], evening_five: [])
  end

end
