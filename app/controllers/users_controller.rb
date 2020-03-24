class UsersController < ApplicationController

  before_action :set_profile, only: [:profile_edit, :profile_update]
  before_action :set_location, only: [:location_edit, :location_update]

  def index
    
  end

  def show
    @user = User.find(params[:id])
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC")
    @category = Category.all.order("ancestry ASC").limit(13)
    @parents = Category.where(ancestry:nil)
  end

  def onsale
    @items = Item.includes(:user)
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC")
    @category = Category.all.order("ancestry ASC").limit(13)
    @parents = Category.where(ancestry:nil)
  end

  def done
    @items = Item.includes(:user)
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC")
    @category = Category.all.order("ancestry ASC").limit(13)
    @parents = Category.where(ancestry:nil)
  end

  def location_edit
  end

  def location_update
    @location.update(location_params)
    redirect_to user_path
  end

  def profile_edit
  end

  def profile_update
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def set_profile
    @user = User.find(params[:id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_family_name, :user_first_name, :user_family_name_kana, :user_first_name_kana, :birth, :introduction, :user_image)
  end
  
  def location_params
    params.require(:location).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :building_name, :phone_name)
  end

end
