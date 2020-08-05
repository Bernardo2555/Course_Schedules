class UsersBackoffice::AgendasController < UsersBackofficeController
  before_action :set_agenda, only: [:edit, :update]
  before_action :create_table, only: [:edit, :update]

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
      if @agenda.update(agenda: populated_agenda)
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
    params.require(:agenda).permit(:user_id, :agenda)
  end

  def create_table
    if Agenda.find(params[:id]).agenda == !nil
      temp_agenda = Daru::DataFrame.new({
                                            'Segunda-Feira' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
                                            'Terca-Feira' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
                                            'Quarta-Feira' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
                                            'Quinta-Feira' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
                                            'Sexta-Feira' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
                                            'Sabado' => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
                                        },
                                        index: ['07:30', '08:20', '09:10', '10:10',
                                                '11:00', '13:20', '14:10', '15:00',
                                                '16:00', '16:50', '17:40', '18:50',
                                                '19:40', '20:30', '21:30', '22:30'],
                                        order: ['Segunda-Feira', 'Terca-Feira',
                                                'Quarta-Feira', 'Quinta-Feira',
                                                'Sexta-Feira', 'Sabado'])
      Agenda.find(params[:id]).update(agenda: temp_agenda)
    end
  end

  def populated_agenda
    (params[:agenda] || []).each do |agen|
      @agenda.agenda.build(agenda: agen) unless agen != 0 || agen != 1
    end
  end

end
