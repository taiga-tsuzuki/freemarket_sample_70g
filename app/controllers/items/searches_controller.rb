class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:keyword])
    @a = @items.page(params[:page]).per(20)
    @category = Category.all.order("ancestry ASC").limit(13)
    @parents = Category.where(ancestry:nil)
  end
end
