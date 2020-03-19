class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = @category.items.page(params[:page]).per(20)
    @category_children = @category.children
  end
end