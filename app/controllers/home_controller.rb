class HomeController < ApplicationController

  def index
    @items = Item.all
    @purchases = Purchase.all
  end

end
