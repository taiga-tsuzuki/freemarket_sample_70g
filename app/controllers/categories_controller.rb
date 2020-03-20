class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = @category.items.page(params[:page]).per(20)
    @category_children = @category.children
    @parents = Category.where(ancestry:nil)
  end
end