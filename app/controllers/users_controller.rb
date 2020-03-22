class UsersController < ApplicationController
  def index
  end

  def show
  end

  def onsale
    @items = Item.includes(:user)
  end

  def done
    @items = Item.includes(:user)
  end
end
