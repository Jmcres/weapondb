class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update,]
    

    # GET /api/v1/users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /api/v1/users/:id
  def show
    render json: @user, status: :ok
  end

  # POST /api/v1/users
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
  end

  # def login 
  #   @user = User.all.find_by (username: params[:username])
  #   if @user.authenticate(param[:password])
  #     render json @user
  #   else
  #     render json {status: "denied"}
  #   end
  # end

  private
  
  def user_params
    params.permit(:username, :password, :firstname, :lastname)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
