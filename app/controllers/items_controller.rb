class ItemsController < ApplicationController
  def index
    @items = Item.includes(:user).limit(3).order('created_at DESC')
    @images = Image.includes(:item).limit(3).order('created_at DESC')
  end

  def show
  end

  
end
