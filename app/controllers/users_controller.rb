class UsersController < ApplicationController
  def index
  end

  def show
  end

  def onsale
    @items = Item.all
  end
end
