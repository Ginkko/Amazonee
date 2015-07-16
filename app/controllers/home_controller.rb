class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @items = Item.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 10, :page => params[:page])
    @purchases = Purchase.order(params[:sort_purchase])
  end

  private
  def sort_column
    Item.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
