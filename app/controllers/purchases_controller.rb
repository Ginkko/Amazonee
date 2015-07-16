class PurchasesController < ApplicationController

    load_and_authorize_resource param_method: :purchase_params

    def index
      respond_to do |format|
        format.html { render :index }
        format.js
      end
    end

    def show

    end

    def new
      @items = Item.all
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end

    def create
      if @purchase.save
        flash[:notice] = "Purchase Saved"
        redirect_to purchase_path(@purchase)
      else
        @items = Item.all
        render :new
      end
    end

    def edit
      @items = Item.all
    end

    def update
      if @purchase.update(purchase_params)
        flash[:notice] = "Purchase Updated"
        render :show
      else
        render :edit
      end
    end

    def destroy
      Purchase.find(params[:id]).destroy
      @purchases = Purchase.all
      flash[:notice] = "Purchase Deleted"
      redirect_to purchases_path
    end

    private
    def purchase_params
      params.require(:purchase).permit(:name, :date, :user_id, {item_ids: []} )
    end

  end
