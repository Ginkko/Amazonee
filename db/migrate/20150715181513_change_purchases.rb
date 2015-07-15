class ChangePurchases < ActiveRecord::Migration
  def change
    remove_column :purchases, :purchase_date

    add_column :purchases, :date, :datetime
  end
end
