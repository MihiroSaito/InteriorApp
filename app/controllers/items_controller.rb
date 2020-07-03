class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
      redirect_to root_path
    else
      flash.now[:alert] = '必須項目に誤りがあります。'
      render action: :new
    end
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:title, :image, :url, :price, :category).merge(user_id: current_user.id)
  end
end
