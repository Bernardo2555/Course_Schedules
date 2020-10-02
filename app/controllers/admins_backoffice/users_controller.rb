class AdminsBackoffice::UsersController < AdminsBackofficeController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :verify_password, only: [:update]
  before_action :user_schedule, only: [:destroy]


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        agenda = Agenda.new(user_id: User.last.id)
        agenda.save
        format.html { redirect_to admins_backoffice_users_path, notice: 'Professor(a) foi craido(a) com sucesso!' }
        format.json { render status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admins_backoffice_users_path, notice: 'Professor(a) foi atualizado(a) com sucesso!' }
        format.json { render status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @block
      @user.destroy
      respond_to do |format|
        format.html { redirect_to admins_backoffice_users_path, notice: @notice }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to admins_backoffice_users_path, notice: @notice }
      end
    end
  end

  private

  def verify_password
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].extract!(:password, :password_confirmation)
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :description, :telephone, :ar)
  end

  def user_schedule
    if Schedule.find_by(user_id: @user).nil?
      @block = true
      @notice = "Professor(a) foi deletado(a) com sucesso!"
    else
      @block = false
      @notice = "Professor(a) não pode ser deletado(a)! Verifique se o mesmo possui horários!"
    end
  end
end