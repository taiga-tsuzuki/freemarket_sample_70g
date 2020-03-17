class ItemsController < ApplicationController

  def index
    @items = Item.includes(:images).order(:item_purchaser_id, "id DESC").limit(3)   
  end

  def new
    @item = Item.new
    @item.images.new
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
    @item = Item.includes(:user).find(params[:id])
    @items = @item.images
  end

  def done
  end

  def category_children  
    @category_children = Category.find(params[:productcategory]).children 
    end

  # Ajax通信で送られてきたデータをparamsで受け取り､childrenで子を取得
  def category_grandchildren
    @category_grandchildren = Category.find(params[:productcategory]).children
  end

  def search
    respond_to do |format|
      format.html
      format.json do
        @children = Category.find(params[:parent_id]).children
        #親ボックスのidから子ボックスのidの配列を作成してインスタンス変数で定義
      end
    end
  end

  def edit
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :description, :category_id, :brand_name, :size, :condition,
                                  :shipping_fee_payer,:prefecture_id, :shipping_days, :price,
                                  images_attributes: [:image, :_destroy, :id], categories_attributes: [:name]).merge(user_id: 1)
  end
end
