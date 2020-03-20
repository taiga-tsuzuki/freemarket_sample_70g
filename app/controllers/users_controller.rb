class UsersController < ApplicationController
  def index
  end

  def show
    @profile = current_user.profile
  end

  def onsale
    @items = Item.all
  end

  def location_edit
    @items = Item.all
  end

  def edit
    @user = current_user
    @profile = current_user.profile
  end

  def update
    user.update(profile_params)
    redirect_to root_path
    # redirect_to user_path(current_user.id)
  end
  
  private

  def profile_params
    params.require(:profile).permit(:first_name,:family_name,:first_name_kana,:family_name_kana,:birth_year,:birth_month,:birth_day,:introduction,:user_image)
  end
end
