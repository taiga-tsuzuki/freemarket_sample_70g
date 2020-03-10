class ItemsController < ApplicationController
  def index
    @items = Item.select('item_name, price').limit(3).order('id DESC')
  end
end
