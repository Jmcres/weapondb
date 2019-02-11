class Api::V1::WeaponsController < ApplicationController
    before_action :find_weapon, only: [:show, :update]
    

    # GET /api/v1/weapons
  def index
    @weapons = Weapon.all
    render json: @weapons, status: :ok
  end

  # GET /api/v1/weapons/:id
  def show
    @weapon = Weapon.find(params[:id])
    render json: @weapon, status: :ok
  end

  # POST /api/v1/weapoons
  def create
    @weapon = Weapon.create(weapon_params)
    if @weapon.valid?
      render json: @weapon, status: :created
    else
      render json: @weapon.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @weapon.update(weapon_params)
    if @weapon.save
      render json: @weapon, status: :accepted
    else
      render json: { errors: @weapon.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @weapon = Weapon.find(params[:id])
    if @Weapon.destroy
      render json:@weapons
    end
  end


  private
  
  def weapon_params
    params.permit(:weaponsystem, :name, :img_url, :role ,:country ,:side ,:gun ,:ammo ,:speed ,:armor ,:range ,:crew ,:firepowergun ,:firepowerammo ,:speedscore ,:health ,:protection ,:rangescore)
  end

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end
end
