class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.images.new
    # @item.category.new
    # @item.brands.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def confirm
  end
  
  def show
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :description, :category, :brand, :size, :condition, :shipping_fee_payer, :shipping_location, :shipping_days, :price, images_attributes: [:image], categories_attributes: [:ancestry], brands_attributes: [])
  end

end
