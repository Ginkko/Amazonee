class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.date :purchase_date
      t.belongs_to :user

      t.timestamps
    end
  end
end
