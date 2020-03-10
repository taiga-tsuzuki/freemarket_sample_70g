class ItemsController < ApplicationController
  def index
    @item = Item.select('item_name, price').limit(3).order('id DESC')
  end
  
  def new
  end

  def confirm
  end
  
  def show
  end


end
