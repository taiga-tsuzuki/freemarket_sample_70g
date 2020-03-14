class ItemsController < ApplicationController

  def index
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC").limit(3)   
  end

  def confirm
  end
  
  def show
    @item = Item.includes(:user).find(params[:id])
  end

  def done
  end

  def edit
    @item = Item.includes(:user).find(params[:id])
    @user = User.all.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    user = User.find(params[:id])
    user.update(user_params[:user])
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :price, :description, :category_id, :brand_id, :size, :condition, :shipping_fee_payer, :shipping_location, :shipping_days)
  end

  def user_params
    params.require(:item).permit(user:[:nickname])
  end


  def destroy
  end

end

