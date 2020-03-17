class CategoriesController < ApplicationController
  def show
    @items = Item.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end
end
