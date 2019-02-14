class Api::V1::UserWeaponsController < ApplicationController
  before_action :find_user_weapon, only: [:show, :update, :destroy]
    

  # GET /api/v1/users
def index
  @user_weapons = UserWeapon.all
  render json: @user_weapons, status: :ok
end

# GET /api/v1/users/:id
def show
  render json: @user_weapon, status: :ok
end

# POST /api/v1/users
def create
  # found_user_weapon = UserWeapon.find_by(weapon_id: user_weapon_params.weapon_id)
  # if found_user_weapon 
  #   render json: {status: "already in database"}
  # else 
    @user_weapon = UserWeapon.create(user_weapon_params)
  if @user_weapon.valid?
    render json: @user_weapon, status: :created
  else
    render json: @user_weapon.errors.full_messages, status: :unprocessable_entity
  end 
end

# def update
#   @user_we.update(user_weapons_params)
#   if @user.save
#     render json: @user, status: :accepted
#   else
#     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
#   end
# end

def destroy
  @user_weapon.destroy
end



private

def user_weapon_params
  params.permit(:user_id, :weapon_id)
end

def find_user_weapon
  @user_weapon = UserWeapon.find(params[:id])
end

end
