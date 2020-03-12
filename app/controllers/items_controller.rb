class ItemsController < ApplicationController

  def index
    @items = Item.includes(:user).order(:item_purchaser_id,:id=>:desc).limit(3)
  end
  
  def new
  end

  def confirm
  end
  
  def show
  end

  def done
  end

end
