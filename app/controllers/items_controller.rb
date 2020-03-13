class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC").limit(3)   
  end

  def confirm
  end
  
  def show
  end




end
