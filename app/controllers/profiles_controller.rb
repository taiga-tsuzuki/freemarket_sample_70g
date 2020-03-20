class ProfilesController < ApplicationController
  def edit
    @items = Item.all
    @profile = current_user.profile
  end

  def update
  end
end
