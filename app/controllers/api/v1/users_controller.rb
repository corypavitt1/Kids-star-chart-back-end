class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user)}, status: :accepted
  end

  def show
      @users = User.find(params[:id])

      render json: @users, status: 200
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token, status:200 }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable

    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :family_name)
  end
end
