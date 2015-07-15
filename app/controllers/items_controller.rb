class ItemsController < ApplicationController

  load_and_authorize_resource param_method: :item_params

  def index

  end

  def show

  end

  def new

  end

  def create
    if @item.save
      flash[:notice] = "Item Saved"
      render :show
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @item.update(item_params)
      flash[:notice] = "Item Updated"
      render :show
    else
      render :edit
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    @items = Item.all
    flash[:notice] = "Item Deleted"
    render :index

  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :user_id, :regular_price, :sale_price)
  end

end
