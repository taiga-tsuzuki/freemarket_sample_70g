class ItemsController < ApplicationController


  def index
  end

  def new
    @item = Item.new
    @item.images.new
    # @item.category.new
    # @item.brand.new
    @brand = Brand.new
  end

  def create
    @item = Item.new(item_params)
    # @brand = Brand.create
    # binding.pry

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
    params.require(:item).permit(:item_name, :description, :category_id, :brand_id, :size, :condition, :shipping_fee_payer, :shipping_location, :shipping_days, :price, images_attributes: [:image], categories_attributes: [:ancestry], brands_attributes: [:name]).merge(user_id: 1)
  end

end
  