class ItemsController < ApplicationController

before_action :set_item, only: [:edit, :update]
before_action :set_user, only: [:edit, :update]

  def index
    @items = Item.includes(:user).order(:item_purchaser_id,:id=>:desc).limit(3)
  end
  
  def new
  end

  def confirm
  end
  
  def show
    @item = Item.includes(:user).find(params[:id])
  end

  def done
  end

  def edit

  end

  def update
    @item.update(item_params)
    @user.update(user_params[:user])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def set_item
    @item = Item.includes(:user).find(params[:id])
  end

  def item_params
    params.require(:item).permit(:item_name, :price, :description, :category_id, :brand_id, :size, :condition, :shipping_fee_payer, :shipping_location, :shipping_days)
  end

  def user_params
    params.require(:item).permit(user:[:nickname])
  end


  def destroy
  end

end