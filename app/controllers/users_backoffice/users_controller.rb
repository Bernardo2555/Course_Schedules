class UsersBackoffice::UsersController < UsersBackofficeController
  before_action :set_user, only: [:edit, :update]
  before_action :verify_password, only: [:update]

  def edit
  end

  def update

    respond_to do |format|
      if @user.update(user_params)
        sign_in(@user, bypass: true)
        format.html { redirect_to edit_users_backoffice_user_path( @user = User.find(current_user.id) ), notice: 'User was successfully updated.'}
        format.json { render status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def verify_password
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].extract!(:password, :password_confirmation)
    end
  end

  def set_user
  @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
                                 :description, :telephone, :ar)
  end
end
